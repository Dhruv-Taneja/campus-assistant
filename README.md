# Campus Assistant

I'm building an assistant for students at my college. Right now, finding anything means digging through WhatsApp groups and old drives. The plan is one place where you can ask about your branch and semester, get previous year question papers, and get advice on specific courses from people who've already taken them. General questions too.

Only the data side exists so far. The database has the 1st-year B.Tech curriculum (2023 batch onwards) for all 10 programmes. The assistant itself isn't built yet.

## What's here

- `db/schema.sql` - the database schema
- `db/seed.sql` - the 1st-year data: 44 courses, 299 programme/semester entries, syllabus text
- `scripts/validate.py` - builds the database and checks it
- `docs/DATA_NOTES.md` - where the data came from, what's missing, what doesn't match
- `CONTRIBUTING.md` - how to fix data or add papers

## How the data is organised

Syllabi change a lot and the same subject shows up in many branches. A branch > semester > subject tree would copy shared subjects everywhere and need reworking every time something is revised. So each course is a single row in `course`, and a separate `offering` table records which programme takes it, in which semester, for which batches.

```
programme ──< offering >── course ──< syllabus_version
                              │
                              ├──< resource (PYQs, notes, links)
                              └──< advice
```

The real 1st-year data needed a few extras:

- The same course can sit in different semesters for different programmes. Communication Skills / Financial Education is semester 1 for CoE, IT, AI&ML, IIoT and M&C, and semester 2 for EE, CE, ECE, ME and PIE. That's just a different `semester` on the offering.
- Some slots are "take one of these" (Communication Skills or Financial Education, and the groups of qualifying courses). Offerings with the same `choice_group` for a programme and semester are alternatives.
- `CSPC100`, `ITPC100` and `AIPC100` are the same Data Structures syllabus under three codes. They share an `equiv_group` so a paper for one can be found from the others.

## Trying it

```bash
python3 scripts/validate.py campus.db
sqlite3 campus.db
```

```sql
-- AI & ML, 2024 batch, semester 2
SELECT course_code, title, credits, category, choice_group
FROM v_curriculum
WHERE programme = 'AIML' AND semester = 2
  AND batch_from <= 2024 AND (batch_to IS NULL OR batch_to >= 2024)
ORDER BY category, course_code;

-- who takes MAIC101, and when
SELECT programme, semester, category FROM v_curriculum WHERE course_code = 'MAIC101';

-- every code that shares a syllabus with AIPC100
SELECT code, title FROM course
WHERE equiv_group = (SELECT equiv_group FROM course WHERE code = 'AIPC100');
```

Categories follow the scheme: IC institute core, NC qualifying core, PC programme core, PE programme elective, OE open elective.

## Roadmap

- [x] Schema and 1st-year data
- [ ] 2nd to 4th year schemes and syllabi
- [ ] Fill the gaps listed in `docs/DATA_NOTES.md`
- [ ] Previous year papers
- [ ] Search over the data
- [ ] The chat interface
- [ ] Advice from seniors

## Data and licence

The code and schema are MIT licensed (see `LICENSE`). The curriculum and syllabus text comes from the institute's scheme and syllabi document and belongs to them. It's here for student reference. The syllabus text was pulled out of the PDF automatically and some pages are scanned, so check `source_pages` against the original before relying on it for exams or registration.

## Contributing

See `CONTRIBUTING.md`. Corrections to the data are the most useful thing right now.
