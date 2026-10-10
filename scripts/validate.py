#!/usr/bin/env python3
"""Builds the database in memory from db/schema.sql and db/seed.sql and checks it.

Run from the repo root:  python3 scripts/validate.py [out.db]
Give it a filename to also save the database, which is handy for trying queries.
Exit code is non-zero if any check fails.
"""
import sqlite3
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
EXPECTED_TOTAL = {1: 21, 2: 22}          # credits printed in the scheme tables
KNOWN_GAPS = {("MC", 2): 18}             # M&C has no programme-specific course in the source (4 cr missing)

con = sqlite3.connect(":memory:")
con.executescript((ROOT / "db/schema.sql").read_text())
con.executescript((ROOT / "db/seed.sql").read_text())
errors, warnings = [], []

# 1. foreign keys
bad = con.execute("PRAGMA foreign_key_check").fetchall()
if bad:
    errors.append(f"foreign key violations: {bad[:5]}")

# 2. every course is offered somewhere
orphans = [r[0] for r in con.execute(
    "SELECT code FROM course WHERE id NOT IN (SELECT course_id FROM offering)")]
if orphans:
    errors.append(f"courses with no offering: {orphans}")

# 3. a choice group needs at least two alternatives
for prog, sem, grp, n in con.execute("""
    SELECT p.code, o.semester, o.choice_group, COUNT(*)
    FROM offering o JOIN programme p ON p.id = o.programme_id
    WHERE o.choice_group IS NOT NULL
    GROUP BY 1, 2, 3 HAVING COUNT(*) < 2"""):
    errors.append(f"choice group {grp} has one member for {prog} sem {sem}")

# 4. an equiv_group needs at least two courses
for grp, n in con.execute(
        "SELECT equiv_group, COUNT(*) FROM course WHERE equiv_group IS NOT NULL GROUP BY 1 HAVING COUNT(*) < 2"):
    errors.append(f"equiv_group {grp} has a single course")

# 5. credits per semester (a choice group counts once)
rows = con.execute("""
    SELECT p.code, o.semester, COALESCE(o.choice_group, c.code) AS slot, MAX(c.credits)
    FROM offering o JOIN course c ON c.id = o.course_id JOIN programme p ON p.id = o.programme_id
    GROUP BY p.code, o.semester, slot""").fetchall()
totals = {}
for prog, sem, _slot, cr in rows:
    totals[(prog, sem)] = totals.get((prog, sem), 0) + (cr or 0)
for (prog, sem), got in sorted(totals.items()):
    want = EXPECTED_TOTAL.get(sem)
    if (prog, sem) in KNOWN_GAPS:
        if got != KNOWN_GAPS[(prog, sem)]:
            errors.append(f"{prog} sem {sem}: expected known-gap total {KNOWN_GAPS[(prog, sem)]}, got {got}")
        else:
            warnings.append(f"{prog} sem {sem}: {got} credits (expected {want}; programme course missing in source)")
    elif want is not None and got != want:
        errors.append(f"{prog} sem {sem}: {got} credits, scheme says {want}")

print(f"{con.execute('SELECT COUNT(*) FROM course').fetchone()[0]} courses, "
      f"{con.execute('SELECT COUNT(*) FROM offering').fetchone()[0]} offerings, "
      f"{con.execute('SELECT COUNT(*) FROM syllabus_version').fetchone()[0]} syllabus entries")
for (prog, sem), got in sorted(totals.items()):
    print(f"  {prog:5} sem {sem}: {got:g} credits")
for w in warnings:
    print("WARNING:", w)
for e in errors:
    print("ERROR:", e)
if len(sys.argv) > 1 and not errors:
    con.backup(sqlite3.connect(sys.argv[1]))
    print(f"wrote {sys.argv[1]}")
sys.exit(1 if errors else 0)
