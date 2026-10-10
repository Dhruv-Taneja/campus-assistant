# Contributing

Corrections and new data are the most useful things right now.

## Fixing wrong data

Edit `db/seed.sql`. Courses are in the `course` insert. Which programme takes what, and when, is in the `offering` insert. Then run `python3 scripts/validate.py`. It should pass, apart from the M&C semester 2 warning, which is a known gap. In your pull request, say what you changed and where you checked it (a circular, a notice, a page number).

If a syllabus gets revised, add a new `syllabus_version` row with a new version instead of overwriting the old one. If a course moves to another semester, add a new `offering` with a new `batch_from` and set `batch_to` on the old one.

## Adding the next year

Do it the way the 1st year was done: new courses first, then offerings, then syllabus rows. Course codes go in without spaces (`MAIC101`, not `MAIC 101`).

## Previous year papers

Add a `resource` row that links to the paper. Please don't commit the PDFs themselves.

```sql
INSERT INTO resource (course_id, type, title, url, exam_type, year, contributed_by)
VALUES ((SELECT id FROM course WHERE code = 'MAIC101'), 'pyq',
        'MAIC101 end-sem 2024', 'https://...', 'end', 2024, 'your-github-handle');
```

`exam_type` is one of `mid`, `end`, `quiz`, `supplementary`. New rows start with `verified = 0` until someone checks the link. Only share papers you're allowed to share. Courses with the same `equiv_group` (like the three Data Structures codes) share papers, so link it under whichever code the paper was set for.

## Advice

Add a row to `advice` for the course. Say what to focus on, how the lab or viva works, which books helped.

## Problems

Open an issue with the course code, what's wrong, and where you saw the correct information.
