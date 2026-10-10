# Data notes

## Where it comes from

Everything in `db/seed.sql` is from one PDF, the B.Tech. 1st year scheme and syllabi for the 2023 batch onwards, all programmes (100 pages). `source_pages` in `syllabus_version` refers to pages of that PDF.

The semester scheme tables on pages 2 and 3 decide which programme takes which course in which semester, and give credits and L-T-P. The syllabus pages (12 to 100) give the syllabus text.

Programme codes: COE, IT, AIML, IIOT, MC, EE, CE, ECE, ME, PIE. I left IIOT and MC named the way the PDF writes them (IIoT, M&C). Department codes are the 12 listed on page 1 of the PDF. A programme is linked to a department only where that's obvious (CoE to CS, for example); AI&ML, IIoT and M&C are left blank.

## Checking it

`python3 scripts/validate.py` adds up each programme's credits per semester and compares them to the totals printed in the scheme (21 for semester 1, 22 for semester 2). A choice group counts once. 19 of the 20 programme-semesters match. The one that doesn't is M&C semester 2, below.

## What's missing

- M&C semester 2: the scheme has a 4-credit programme-specific course for every programme, but the PDF has no course code or syllabus for M&C. So M&C semester 2 adds up to 18, not 22.
- MANC101 (Vedic Mathematics) is in the qualifying course list but has no syllabus page.
- HSNC102 and HSNC103 (Sanskrit, Hindi) are in Devanagari and the text didn't extract properly, so only page numbers are stored.
- HSNC104 (Telugu), SWNC101 and SWNC102 are also page numbers only. Telugu is the same script problem; SWNC101 and SWNC102 are long multi-part documents (NCC, Sports, Yoga, NSS, Clubs).
- CSPC100, ITPC100 and AIPC100 say 4 credits but no L-T-P is given.

## Where the scheme and the syllabus pages disagree

The database uses the scheme table. The other value is saved in the course's `notes`.

| Course | Scheme | Syllabus page |
|---|---|---|
| MAIC101, MAIC102 | 3-0-0, 3 credits | 3-1-0, 4 credits |
| PHIC101 | 3-0-2, 4 credits | 2-1-2, 4 credits |
| PHIC102 to PHIC105 | 3-0-2, 4 credits | 2-1-2, 4 credits |
| CHIC101 | 2-0-2, 3 credits | 2-0-1, 3 credits |
| CHIC102, CHIC103 | 3-0-2, 4 credits | 2-1-1, 4 credits |
| HSIC102, HSIC103, HSIC104 | 3-0-0, 3 credits | 3 credits (L-2, T-1) |
| CEIC101 | 1-0-3, 2 credits | 2-0-3, 3 credits (scanned text) |
| MEIC101 | 1-0-3, 2 credits | 1-0-3, 3 credits |
| CSIC102 | 2 credits | 2.5 credits |
| MEPC103 | T is 0 in the programme course row | T is 1 |

If you know which one is current, fix the course row and its note.

## Choices I made

- The two "take one" slots are `HSIC101-OR-103` and `HSIC102-OR-104`. The qualifying groups are `NC-GROUP-I` (HSNC101 to 105 and MANC101) and `NC-GROUP-II` (HSNC106 to 111).
- The scheme shows 2 credits once per semester for the qualifying group, so each course in it carries 2 and the group counts once.
- SWNC101 and SWNC102 share one "1*" credit in the scheme, given at the end of 6th semester. I left their credits empty and kept them out of the semester totals.
- CSPC100, ITPC100 and AIPC100 share `equiv_group = 'DS-Y1'`. Their syllabus pages are about 99.7% identical. CSIC101 and CSIC103 (C programming for different programmes) have different syllabi, so they aren't grouped.
- The syllabus text came out of the PDF's text layer. A lot of it is OCR and has typos, including in course codes (for example "PHICIOl"). Use it for search and reference, not as a replacement for the original.
