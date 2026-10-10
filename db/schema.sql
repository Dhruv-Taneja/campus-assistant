-- Subject registry for the campus assistant. SQLite, should move to Postgres without much fuss.
-- A course is stored once. Where and when it's taught lives in `offering`, so revising a
-- syllabus or moving a course to another semester doesn't touch the schema.

PRAGMA foreign_keys = ON;

CREATE TABLE department (
  id    INTEGER PRIMARY KEY,
  code  TEXT NOT NULL UNIQUE,          -- two-letter code used in course codes, e.g. 'CS', 'MA'
  name  TEXT NOT NULL
);

CREATE TABLE programme (               -- a degree stream, e.g. B.Tech AI & ML
  id            INTEGER PRIMARY KEY,
  code          TEXT NOT NULL UNIQUE,  -- e.g. 'AIML'
  name          TEXT NOT NULL,
  department_id INTEGER REFERENCES department(id)   -- NULL when not stated in source
);

CREATE TABLE course (                  -- one row per course code, shared across programmes
  id            INTEGER PRIMARY KEY,
  code          TEXT NOT NULL UNIQUE,  -- e.g. 'MAIC101' (no space)
  title         TEXT NOT NULL,
  credits       REAL,                  -- NULL = not stated / awarded separately (see notes)
  lecture       INTEGER,               -- L hours per week
  tutorial      INTEGER,               -- T hours per week
  practical     INTEGER,               -- P hours per week
  department_id INTEGER REFERENCES department(id),  -- offering department
  equiv_group   TEXT,                  -- courses with different codes but the same content share a tag
  notes         TEXT,                  -- data caveats, e.g. source discrepancies
  active        INTEGER NOT NULL DEFAULT 1
);

-- Links a course to a programme + semester for a range of admission batches.
-- Same course can be core in one programme, elective in another, and sit in different semesters.
CREATE TABLE offering (
  id           INTEGER PRIMARY KEY,
  course_id    INTEGER NOT NULL REFERENCES course(id),
  programme_id INTEGER NOT NULL REFERENCES programme(id),
  semester     INTEGER NOT NULL CHECK (semester BETWEEN 1 AND 12),
  category     TEXT NOT NULL CHECK (category IN ('IC','NC','PC','PE','OE')),
               -- IC institute core, NC non-conventional (qualifying) core,
               -- PC programme core, PE programme elective, OE open elective
  choice_group TEXT,                   -- offerings sharing (programme, semester, choice_group) are
                                       -- alternatives: the student takes ONE of them
  batch_from   INTEGER NOT NULL,       -- first admission batch this applies to
  batch_to     INTEGER,                -- NULL = still current
  UNIQUE (course_id, programme_id, semester, batch_from)
);

-- Syllabus revisions attach to the course; old versions are kept.
CREATE TABLE syllabus_version (
  id             INTEGER PRIMARY KEY,
  course_id      INTEGER NOT NULL REFERENCES course(id),
  version        TEXT NOT NULL,        -- e.g. '2023'
  effective_from INTEGER NOT NULL,     -- first admission batch
  source         TEXT,                 -- where the text came from
  source_pages   TEXT,                 -- page references in that source, e.g. '12-13'
  content_text   TEXT,                 -- extracted text; NULL when not yet transcribed
  UNIQUE (course_id, version)
);

CREATE TABLE resource (                -- PYQs, notes, links
  id             INTEGER PRIMARY KEY,
  course_id      INTEGER NOT NULL REFERENCES course(id),
  type           TEXT NOT NULL CHECK (type IN ('pyq','notes','video','book','other')),
  title          TEXT NOT NULL,
  url            TEXT NOT NULL,
  exam_type      TEXT CHECK (exam_type IN ('mid','end','quiz','supplementary')),
  year           INTEGER,
  contributed_by TEXT,
  verified       INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE advice (                  -- course-specific tips from seniors
  id          INTEGER PRIMARY KEY,
  course_id   INTEGER NOT NULL REFERENCES course(id),
  body        TEXT NOT NULL,
  author      TEXT,
  created_at  TEXT NOT NULL DEFAULT (datetime('now'))
);

CREATE INDEX idx_offering_prog_sem ON offering(programme_id, semester);
CREATE INDEX idx_offering_course   ON offering(course_id);
CREATE INDEX idx_course_equiv      ON course(equiv_group);
CREATE INDEX idx_resource_course   ON resource(course_id, type);

-- What a programme takes, by semester.
CREATE VIEW v_curriculum AS
SELECT p.code AS programme, o.semester, c.code AS course_code, c.title,
       c.credits, c.lecture, c.tutorial, c.practical,
       o.category, o.choice_group, o.batch_from, o.batch_to
FROM offering o
JOIN course c    ON c.id = o.course_id
JOIN programme p ON p.id = o.programme_id;
