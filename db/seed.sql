-- 1st-year B.Tech. data, 2023 batch onwards, all programmes.
-- Source: the 1st year scheme and syllabi PDF (see docs/DATA_NOTES.md).
-- Credits and L-T-P come from the semester scheme tables. Where a syllabus page disagrees,
-- it's noted in course.notes. Syllabus text was extracted automatically and some pages are
-- scanned, so check source_pages against the PDF when it matters.

INSERT INTO department (code, name) VALUES
  ('CE', 'Civil Engineering'),
  ('ME', 'Mechanical Engineering'),
  ('CS', 'Computer Engineering'),
  ('CH', 'Chemistry'),
  ('PH', 'Physics'),
  ('HS', 'Humanities'),
  ('MA', 'Mathematics'),
  ('EE', 'Electrical Engineering'),
  ('SW', 'Student Welfare'),
  ('EC', 'Electronics & Communication Engineering'),
  ('PI', 'Production & Industrial Engineering'),
  ('IT', 'Information Technology');

INSERT INTO programme (code, name, department_id) VALUES
  ('COE', 'CoE', (SELECT id FROM department WHERE code='CS')),
  ('IT', 'IT', (SELECT id FROM department WHERE code='IT')),
  ('AIML', 'AI & ML', NULL),
  ('IIOT', 'IIoT', NULL),
  ('MC', 'M&C', NULL),
  ('EE', 'EE', (SELECT id FROM department WHERE code='EE')),
  ('CE', 'CE', (SELECT id FROM department WHERE code='CE')),
  ('ECE', 'ECE', (SELECT id FROM department WHERE code='EC')),
  ('ME', 'ME', (SELECT id FROM department WHERE code='ME')),
  ('PIE', 'PIE', (SELECT id FROM department WHERE code='PI'));

INSERT INTO course (code, title, credits, lecture, tutorial, practical, department_id, equiv_group, notes) VALUES
  ('HSIC101', 'Communication Skills in English', 3, 2, 0, 2, (SELECT id FROM department WHERE code='HS'), NULL, NULL),
  ('HSIC103', 'Financial Education', 3, 3, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists credits as 3 (L-2, T-1).'),
  ('HSIC102', 'Economics for Engineers', 3, 3, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists credits as 3 (L-2, T-1).'),
  ('HSIC104', 'Business Studies', 3, 3, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists credits as 3 (L-2, T-1).'),
  ('MAIC101', 'Differential Calculus and Differential Equations', 3, 3, 0, 0, (SELECT id FROM department WHERE code='MA'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 3-1-0 = 4 credits.'),
  ('MAIC102', 'Integral Calculus and Difference Equations', 3, 3, 0, 0, (SELECT id FROM department WHERE code='MA'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 3-1-0 = 4 credits.'),
  ('PHIC101', 'Engineering Physics', 4, 3, 0, 2, (SELECT id FROM department WHERE code='PH'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 2-1-2 = 4 credits.'),
  ('PHIC102', 'Advanced Engineering Physics', 4, 3, 0, 2, (SELECT id FROM department WHERE code='PH'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 2-1-2 = 4 credits.'),
  ('PHIC103', 'Advanced Engineering Physics', 4, 3, 0, 2, (SELECT id FROM department WHERE code='PH'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 2-1-2 = 4 credits.'),
  ('PHIC104', 'Advanced Engineering Physics', 4, 3, 0, 2, (SELECT id FROM department WHERE code='PH'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 2-1-2 = 4 credits.'),
  ('PHIC105', 'Advanced Engineering Physics', 4, 3, 0, 2, (SELECT id FROM department WHERE code='PH'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 2-1-2 = 4 credits.'),
  ('CEIC101', 'Engineering Graphics', 2, 1, 0, 3, (SELECT id FROM department WHERE code='CE'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page text (OCR) lists 2-0-3 = 3 credits.'),
  ('MEIC101', 'Engineering Graphics', 2, 1, 0, 3, (SELECT id FROM department WHERE code='ME'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 1-0-3 = 3 credits.'),
  ('MEIC102', 'Engineering Practice', 2, 1, 0, 3, (SELECT id FROM department WHERE code='ME'), NULL, NULL),
  ('CSIC100', 'Digital System Design', 4, 4, 0, 0, (SELECT id FROM department WHERE code='CS'), NULL, NULL),
  ('CSIC101', 'Problems Solving and Programming Using C', 4, 3, 0, 2, (SELECT id FROM department WHERE code='CS'), NULL, NULL),
  ('CSIC102', 'Engineering Graphics (Web Design)', 2, 1, 0, 3, (SELECT id FROM department WHERE code='CS'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 2.5 credits. Treated as a practical course (not integrated).'),
  ('CSIC103', 'Problems Solving and Programming Using C', 4, 3, 0, 2, (SELECT id FROM department WHERE code='CS'), NULL, NULL),
  ('CSIC104', 'Programming using Python', 4, 3, 0, 2, (SELECT id FROM department WHERE code='CS'), NULL, NULL),
  ('CHIC101', 'Energy and Environmental Science', 3, 2, 0, 2, (SELECT id FROM department WHERE code='CH'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 2-0-1 = 3 credits.'),
  ('CHIC102', 'Chemistry', 4, 3, 0, 2, (SELECT id FROM department WHERE code='CH'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 2-1-1 = 4 credits.'),
  ('CHIC103', 'Chemistry', 4, 3, 0, 2, (SELECT id FROM department WHERE code='CH'), NULL, 'Credits and L-T-P follow the semester scheme table. Syllabus page lists 2-1-1 = 4 credits.'),
  ('HSNC101', 'Human Values and Social Responsibility', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('HSNC102', 'Sanskrit Language Skills', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('HSNC103', 'Hindi Language Skills', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('HSNC104', 'Telugu Language Skills', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('HSNC105', 'Constitution of India', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('MANC101', 'Vedic Mathematics', 2, 2, 0, 0, (SELECT id FROM department WHERE code='MA'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one). No syllabus page for this course in the source PDF.'),
  ('HSNC106', 'Indian Knowledge Systems', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('HSNC107', 'Teachings of Gita', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('HSNC108', 'French Language Skills', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('HSNC109', 'German Language Skills', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('HSNC110', 'Japanese Language Skills', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('HSNC111', 'Thought Lab and Practices', 2, 2, 0, 0, (SELECT id FROM department WHERE code='HS'), NULL, 'Qualifying course; 2 credits shown once per semester for the group (take any one).'),
  ('SWNC101', 'NCC / Sports / Yoga', NULL, 0, 0, 2, (SELECT id FROM department WHERE code='SW'), NULL, 'Scheme shows 1* credit for SWNC101+SWNC102 together, awarded at end of 6th semester on cumulative performance; not in semester totals.'),
  ('SWNC102', 'NSS / Clubs / Technical Societies', NULL, 0, 0, 2, (SELECT id FROM department WHERE code='SW'), NULL, 'Scheme shows 1* credit for SWNC101+SWNC102 together, awarded at end of 6th semester on cumulative performance; not in semester totals.'),
  ('CSPC100', 'Data Structures', 4, NULL, NULL, NULL, (SELECT id FROM department WHERE code='CS'), 'DS-Y1', 'Same syllabus as ITPC100 and AIPC100 (source page lists CSPC 100/ITPC 100 together). L-T-P not stated in source.'),
  ('ITPC100', 'Data Structures', 4, NULL, NULL, NULL, (SELECT id FROM department WHERE code='IT'), 'DS-Y1', 'Same syllabus as CSPC100 and AIPC100. L-T-P not stated in source.'),
  ('AIPC100', 'Data Structures', 4, NULL, NULL, NULL, NULL, 'DS-Y1', 'Same syllabus as CSPC100 and ITPC100. L-T-P not stated in source.'),
  ('CEPC101', 'Engineering Mechanics', 4, 3, 0, 2, (SELECT id FROM department WHERE code='CE'), NULL, 'Scheme gives L 3/4, T 0, P 2/0 for programme courses. L-T-P here is from the course syllabus page. '),
  ('EEPC101', 'Electric Circuit Theory', 4, 4, 0, 0, (SELECT id FROM department WHERE code='EE'), NULL, 'Scheme gives L 3/4, T 0, P 2/0 for programme courses. L-T-P here is from the course syllabus page. '),
  ('ECPC101', 'Circuit Theory', 4, 3, 0, 2, (SELECT id FROM department WHERE code='EC'), NULL, 'Scheme gives L 3/4, T 0, P 2/0 for programme courses. L-T-P here is from the course syllabus page. Syllabus page covers ECE and IIoT.'),
  ('MEPC103', 'Thermodynamics', 4, 3, 1, 0, (SELECT id FROM department WHERE code='ME'), NULL, 'Scheme gives L 3/4, T 0, P 2/0 for programme courses. L-T-P here is from the course syllabus page. Scheme T=0; syllabus page gives T=1 (L+T = 4 contact hours).'),
  ('PIPC101', 'Manufacturing Processes', 4, 4, 0, 0, (SELECT id FROM department WHERE code='PI'), NULL, 'Scheme gives L 3/4, T 0, P 2/0 for programme courses. L-T-P here is from the course syllabus page. ');

-- batch 2023 onwards (batch_to NULL = still current)
WITH v(course_code, programme_code, semester, category, choice_group) AS (VALUES
  ('CHIC101', 'AIML', 1, 'IC', NULL),
  ('CSIC101', 'AIML', 1, 'IC', NULL),
  ('HSIC101', 'AIML', 1, 'IC', 'HSIC101-OR-103'),
  ('HSIC103', 'AIML', 1, 'IC', 'HSIC101-OR-103'),
  ('HSNC101', 'AIML', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC102', 'AIML', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC103', 'AIML', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC104', 'AIML', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC105', 'AIML', 1, 'NC', 'NC-GROUP-I'),
  ('MAIC101', 'AIML', 1, 'IC', NULL),
  ('MANC101', 'AIML', 1, 'NC', 'NC-GROUP-I'),
  ('MEIC102', 'AIML', 1, 'IC', NULL),
  ('PHIC101', 'AIML', 1, 'IC', NULL),
  ('SWNC101', 'AIML', 1, 'NC', NULL),
  ('SWNC102', 'AIML', 1, 'NC', NULL),
  ('CEIC101', 'CE', 1, 'IC', NULL),
  ('CHIC101', 'CE', 1, 'IC', NULL),
  ('CSIC103', 'CE', 1, 'IC', NULL),
  ('HSIC102', 'CE', 1, 'IC', 'HSIC102-OR-104'),
  ('HSIC104', 'CE', 1, 'IC', 'HSIC102-OR-104'),
  ('HSNC106', 'CE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC107', 'CE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC108', 'CE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC109', 'CE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC110', 'CE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC111', 'CE', 1, 'NC', 'NC-GROUP-II'),
  ('MAIC101', 'CE', 1, 'IC', NULL),
  ('PHIC101', 'CE', 1, 'IC', NULL),
  ('SWNC101', 'CE', 1, 'NC', NULL),
  ('SWNC102', 'CE', 1, 'NC', NULL),
  ('CHIC101', 'COE', 1, 'IC', NULL),
  ('CSIC101', 'COE', 1, 'IC', NULL),
  ('HSIC101', 'COE', 1, 'IC', 'HSIC101-OR-103'),
  ('HSIC103', 'COE', 1, 'IC', 'HSIC101-OR-103'),
  ('HSNC101', 'COE', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC102', 'COE', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC103', 'COE', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC104', 'COE', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC105', 'COE', 1, 'NC', 'NC-GROUP-I'),
  ('MAIC101', 'COE', 1, 'IC', NULL),
  ('MANC101', 'COE', 1, 'NC', 'NC-GROUP-I'),
  ('MEIC102', 'COE', 1, 'IC', NULL),
  ('PHIC101', 'COE', 1, 'IC', NULL),
  ('SWNC101', 'COE', 1, 'NC', NULL),
  ('SWNC102', 'COE', 1, 'NC', NULL),
  ('CHIC101', 'ECE', 1, 'IC', NULL),
  ('CSIC103', 'ECE', 1, 'IC', NULL),
  ('HSIC102', 'ECE', 1, 'IC', 'HSIC102-OR-104'),
  ('HSIC104', 'ECE', 1, 'IC', 'HSIC102-OR-104'),
  ('HSNC106', 'ECE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC107', 'ECE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC108', 'ECE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC109', 'ECE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC110', 'ECE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC111', 'ECE', 1, 'NC', 'NC-GROUP-II'),
  ('MAIC101', 'ECE', 1, 'IC', NULL),
  ('MEIC102', 'ECE', 1, 'IC', NULL),
  ('PHIC101', 'ECE', 1, 'IC', NULL),
  ('SWNC101', 'ECE', 1, 'NC', NULL),
  ('SWNC102', 'ECE', 1, 'NC', NULL),
  ('CEIC101', 'EE', 1, 'IC', NULL),
  ('CHIC101', 'EE', 1, 'IC', NULL),
  ('CSIC103', 'EE', 1, 'IC', NULL),
  ('HSIC102', 'EE', 1, 'IC', 'HSIC102-OR-104'),
  ('HSIC104', 'EE', 1, 'IC', 'HSIC102-OR-104'),
  ('HSNC106', 'EE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC107', 'EE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC108', 'EE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC109', 'EE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC110', 'EE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC111', 'EE', 1, 'NC', 'NC-GROUP-II'),
  ('MAIC101', 'EE', 1, 'IC', NULL),
  ('PHIC101', 'EE', 1, 'IC', NULL),
  ('SWNC101', 'EE', 1, 'NC', NULL),
  ('SWNC102', 'EE', 1, 'NC', NULL),
  ('CHIC101', 'IIOT', 1, 'IC', NULL),
  ('CSIC103', 'IIOT', 1, 'IC', NULL),
  ('HSIC101', 'IIOT', 1, 'IC', 'HSIC101-OR-103'),
  ('HSIC103', 'IIOT', 1, 'IC', 'HSIC101-OR-103'),
  ('HSNC101', 'IIOT', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC102', 'IIOT', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC103', 'IIOT', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC104', 'IIOT', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC105', 'IIOT', 1, 'NC', 'NC-GROUP-I'),
  ('MAIC101', 'IIOT', 1, 'IC', NULL),
  ('MANC101', 'IIOT', 1, 'NC', 'NC-GROUP-I'),
  ('MEIC102', 'IIOT', 1, 'IC', NULL),
  ('PHIC101', 'IIOT', 1, 'IC', NULL),
  ('SWNC101', 'IIOT', 1, 'NC', NULL),
  ('SWNC102', 'IIOT', 1, 'NC', NULL),
  ('CHIC101', 'IT', 1, 'IC', NULL),
  ('CSIC101', 'IT', 1, 'IC', NULL),
  ('HSIC101', 'IT', 1, 'IC', 'HSIC101-OR-103'),
  ('HSIC103', 'IT', 1, 'IC', 'HSIC101-OR-103'),
  ('HSNC101', 'IT', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC102', 'IT', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC103', 'IT', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC104', 'IT', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC105', 'IT', 1, 'NC', 'NC-GROUP-I'),
  ('MAIC101', 'IT', 1, 'IC', NULL),
  ('MANC101', 'IT', 1, 'NC', 'NC-GROUP-I'),
  ('MEIC102', 'IT', 1, 'IC', NULL),
  ('PHIC101', 'IT', 1, 'IC', NULL),
  ('SWNC101', 'IT', 1, 'NC', NULL),
  ('SWNC102', 'IT', 1, 'NC', NULL),
  ('CHIC101', 'MC', 1, 'IC', NULL),
  ('CSIC103', 'MC', 1, 'IC', NULL),
  ('HSIC101', 'MC', 1, 'IC', 'HSIC101-OR-103'),
  ('HSIC103', 'MC', 1, 'IC', 'HSIC101-OR-103'),
  ('HSNC101', 'MC', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC102', 'MC', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC103', 'MC', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC104', 'MC', 1, 'NC', 'NC-GROUP-I'),
  ('HSNC105', 'MC', 1, 'NC', 'NC-GROUP-I'),
  ('MAIC101', 'MC', 1, 'IC', NULL),
  ('MANC101', 'MC', 1, 'NC', 'NC-GROUP-I'),
  ('MEIC102', 'MC', 1, 'IC', NULL),
  ('PHIC101', 'MC', 1, 'IC', NULL),
  ('SWNC101', 'MC', 1, 'NC', NULL),
  ('SWNC102', 'MC', 1, 'NC', NULL),
  ('CHIC101', 'ME', 1, 'IC', NULL),
  ('CSIC103', 'ME', 1, 'IC', NULL),
  ('HSIC102', 'ME', 1, 'IC', 'HSIC102-OR-104'),
  ('HSIC104', 'ME', 1, 'IC', 'HSIC102-OR-104'),
  ('HSNC106', 'ME', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC107', 'ME', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC108', 'ME', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC109', 'ME', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC110', 'ME', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC111', 'ME', 1, 'NC', 'NC-GROUP-II'),
  ('MAIC101', 'ME', 1, 'IC', NULL),
  ('MEIC101', 'ME', 1, 'IC', NULL),
  ('PHIC101', 'ME', 1, 'IC', NULL),
  ('SWNC101', 'ME', 1, 'NC', NULL),
  ('SWNC102', 'ME', 1, 'NC', NULL),
  ('CHIC101', 'PIE', 1, 'IC', NULL),
  ('CSIC103', 'PIE', 1, 'IC', NULL),
  ('HSIC102', 'PIE', 1, 'IC', 'HSIC102-OR-104'),
  ('HSIC104', 'PIE', 1, 'IC', 'HSIC102-OR-104'),
  ('HSNC106', 'PIE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC107', 'PIE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC108', 'PIE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC109', 'PIE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC110', 'PIE', 1, 'NC', 'NC-GROUP-II'),
  ('HSNC111', 'PIE', 1, 'NC', 'NC-GROUP-II'),
  ('MAIC101', 'PIE', 1, 'IC', NULL),
  ('MEIC101', 'PIE', 1, 'IC', NULL),
  ('PHIC101', 'PIE', 1, 'IC', NULL),
  ('SWNC101', 'PIE', 1, 'NC', NULL),
  ('SWNC102', 'PIE', 1, 'NC', NULL),
  ('AIPC100', 'AIML', 2, 'PC', NULL),
  ('CSIC100', 'AIML', 2, 'IC', NULL),
  ('CSIC102', 'AIML', 2, 'IC', NULL),
  ('CSIC104', 'AIML', 2, 'IC', NULL),
  ('HSIC102', 'AIML', 2, 'IC', 'HSIC102-OR-104'),
  ('HSIC104', 'AIML', 2, 'IC', 'HSIC102-OR-104'),
  ('HSNC106', 'AIML', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC107', 'AIML', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC108', 'AIML', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC109', 'AIML', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC110', 'AIML', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC111', 'AIML', 2, 'NC', 'NC-GROUP-II'),
  ('MAIC102', 'AIML', 2, 'IC', NULL),
  ('SWNC101', 'AIML', 2, 'NC', NULL),
  ('SWNC102', 'AIML', 2, 'NC', NULL),
  ('CEPC101', 'CE', 2, 'PC', NULL),
  ('CHIC102', 'CE', 2, 'IC', NULL),
  ('HSIC101', 'CE', 2, 'IC', 'HSIC101-OR-103'),
  ('HSIC103', 'CE', 2, 'IC', 'HSIC101-OR-103'),
  ('HSNC101', 'CE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC102', 'CE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC103', 'CE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC104', 'CE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC105', 'CE', 2, 'NC', 'NC-GROUP-I'),
  ('MAIC102', 'CE', 2, 'IC', NULL),
  ('MANC101', 'CE', 2, 'NC', 'NC-GROUP-I'),
  ('MEIC102', 'CE', 2, 'IC', NULL),
  ('PHIC102', 'CE', 2, 'IC', NULL),
  ('SWNC101', 'CE', 2, 'NC', NULL),
  ('SWNC102', 'CE', 2, 'NC', NULL),
  ('CSIC100', 'COE', 2, 'IC', NULL),
  ('CSIC102', 'COE', 2, 'IC', NULL),
  ('CSIC104', 'COE', 2, 'IC', NULL),
  ('CSPC100', 'COE', 2, 'PC', NULL),
  ('HSIC102', 'COE', 2, 'IC', 'HSIC102-OR-104'),
  ('HSIC104', 'COE', 2, 'IC', 'HSIC102-OR-104'),
  ('HSNC106', 'COE', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC107', 'COE', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC108', 'COE', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC109', 'COE', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC110', 'COE', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC111', 'COE', 2, 'NC', 'NC-GROUP-II'),
  ('MAIC102', 'COE', 2, 'IC', NULL),
  ('SWNC101', 'COE', 2, 'NC', NULL),
  ('SWNC102', 'COE', 2, 'NC', NULL),
  ('CHIC103', 'ECE', 2, 'IC', NULL),
  ('CSIC102', 'ECE', 2, 'IC', NULL),
  ('ECPC101', 'ECE', 2, 'PC', NULL),
  ('HSIC101', 'ECE', 2, 'IC', 'HSIC101-OR-103'),
  ('HSIC103', 'ECE', 2, 'IC', 'HSIC101-OR-103'),
  ('HSNC101', 'ECE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC102', 'ECE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC103', 'ECE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC104', 'ECE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC105', 'ECE', 2, 'NC', 'NC-GROUP-I'),
  ('MAIC102', 'ECE', 2, 'IC', NULL),
  ('MANC101', 'ECE', 2, 'NC', 'NC-GROUP-I'),
  ('PHIC103', 'ECE', 2, 'IC', NULL),
  ('SWNC101', 'ECE', 2, 'NC', NULL),
  ('SWNC102', 'ECE', 2, 'NC', NULL),
  ('CHIC103', 'EE', 2, 'IC', NULL),
  ('EEPC101', 'EE', 2, 'PC', NULL),
  ('HSIC101', 'EE', 2, 'IC', 'HSIC101-OR-103'),
  ('HSIC103', 'EE', 2, 'IC', 'HSIC101-OR-103'),
  ('HSNC101', 'EE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC102', 'EE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC103', 'EE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC104', 'EE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC105', 'EE', 2, 'NC', 'NC-GROUP-I'),
  ('MAIC102', 'EE', 2, 'IC', NULL),
  ('MANC101', 'EE', 2, 'NC', 'NC-GROUP-I'),
  ('MEIC102', 'EE', 2, 'IC', NULL),
  ('PHIC104', 'EE', 2, 'IC', NULL),
  ('SWNC101', 'EE', 2, 'NC', NULL),
  ('SWNC102', 'EE', 2, 'NC', NULL),
  ('CSIC102', 'IIOT', 2, 'IC', NULL),
  ('CSIC104', 'IIOT', 2, 'IC', NULL),
  ('ECPC101', 'IIOT', 2, 'PC', NULL),
  ('HSIC102', 'IIOT', 2, 'IC', 'HSIC102-OR-104'),
  ('HSIC104', 'IIOT', 2, 'IC', 'HSIC102-OR-104'),
  ('HSNC106', 'IIOT', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC107', 'IIOT', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC108', 'IIOT', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC109', 'IIOT', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC110', 'IIOT', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC111', 'IIOT', 2, 'NC', 'NC-GROUP-II'),
  ('MAIC102', 'IIOT', 2, 'IC', NULL),
  ('PHIC105', 'IIOT', 2, 'IC', NULL),
  ('SWNC101', 'IIOT', 2, 'NC', NULL),
  ('SWNC102', 'IIOT', 2, 'NC', NULL),
  ('CSIC100', 'IT', 2, 'IC', NULL),
  ('CSIC102', 'IT', 2, 'IC', NULL),
  ('CSIC104', 'IT', 2, 'IC', NULL),
  ('HSIC102', 'IT', 2, 'IC', 'HSIC102-OR-104'),
  ('HSIC104', 'IT', 2, 'IC', 'HSIC102-OR-104'),
  ('HSNC106', 'IT', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC107', 'IT', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC108', 'IT', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC109', 'IT', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC110', 'IT', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC111', 'IT', 2, 'NC', 'NC-GROUP-II'),
  ('ITPC100', 'IT', 2, 'PC', NULL),
  ('MAIC102', 'IT', 2, 'IC', NULL),
  ('SWNC101', 'IT', 2, 'NC', NULL),
  ('SWNC102', 'IT', 2, 'NC', NULL),
  ('CSIC100', 'MC', 2, 'IC', NULL),
  ('CSIC102', 'MC', 2, 'IC', NULL),
  ('CSIC104', 'MC', 2, 'IC', NULL),
  ('HSIC102', 'MC', 2, 'IC', 'HSIC102-OR-104'),
  ('HSIC104', 'MC', 2, 'IC', 'HSIC102-OR-104'),
  ('HSNC106', 'MC', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC107', 'MC', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC108', 'MC', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC109', 'MC', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC110', 'MC', 2, 'NC', 'NC-GROUP-II'),
  ('HSNC111', 'MC', 2, 'NC', 'NC-GROUP-II'),
  ('MAIC102', 'MC', 2, 'IC', NULL),
  ('SWNC101', 'MC', 2, 'NC', NULL),
  ('SWNC102', 'MC', 2, 'NC', NULL),
  ('CHIC102', 'ME', 2, 'IC', NULL),
  ('HSIC101', 'ME', 2, 'IC', 'HSIC101-OR-103'),
  ('HSIC103', 'ME', 2, 'IC', 'HSIC101-OR-103'),
  ('HSNC101', 'ME', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC102', 'ME', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC103', 'ME', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC104', 'ME', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC105', 'ME', 2, 'NC', 'NC-GROUP-I'),
  ('MAIC102', 'ME', 2, 'IC', NULL),
  ('MANC101', 'ME', 2, 'NC', 'NC-GROUP-I'),
  ('MEIC102', 'ME', 2, 'IC', NULL),
  ('MEPC103', 'ME', 2, 'PC', NULL),
  ('PHIC102', 'ME', 2, 'IC', NULL),
  ('SWNC101', 'ME', 2, 'NC', NULL),
  ('SWNC102', 'ME', 2, 'NC', NULL),
  ('CHIC102', 'PIE', 2, 'IC', NULL),
  ('HSIC101', 'PIE', 2, 'IC', 'HSIC101-OR-103'),
  ('HSIC103', 'PIE', 2, 'IC', 'HSIC101-OR-103'),
  ('HSNC101', 'PIE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC102', 'PIE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC103', 'PIE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC104', 'PIE', 2, 'NC', 'NC-GROUP-I'),
  ('HSNC105', 'PIE', 2, 'NC', 'NC-GROUP-I'),
  ('MAIC102', 'PIE', 2, 'IC', NULL),
  ('MANC101', 'PIE', 2, 'NC', 'NC-GROUP-I'),
  ('MEIC102', 'PIE', 2, 'IC', NULL),
  ('PHIC102', 'PIE', 2, 'IC', NULL),
  ('PIPC101', 'PIE', 2, 'PC', NULL),
  ('SWNC101', 'PIE', 2, 'NC', NULL),
  ('SWNC102', 'PIE', 2, 'NC', NULL)
)
INSERT INTO offering (course_id, programme_id, semester, category, choice_group, batch_from)
SELECT c.id, p.id, v.semester, v.category, v.choice_group, 2023
FROM v
JOIN course c ON c.code = v.course_code
JOIN programme p ON p.code = v.programme_code;

INSERT INTO syllabus_version (course_id, version, effective_from, source, source_pages, content_text) VALUES
  ((SELECT id FROM course WHERE code='HSIC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '12-13', 'DEPARTMENT OF HUMANITIES & SOCIAL SCIENCES
  Programme: B. Tech
  Course Title: Communication Skills in English
Course Category: IC  Internal: 50 Marks
Course Code: HSIC 101  Theory: 50 Marks
Credits: 3 (L-2, P-2)  Total: 100 Marks
Semester: 1st/2nd  Time: 3 hrs
Course Objectives
   To develop communication skills among engineering students.
   To build confidence in speaking English with correct pronunciation.
   To develop basic writing skills and vocabulary.
   To develop the ability to comprehend text in various contexts.

  Part- I Theory Teaching
Unit I: Introduction to Communication Skills
Introduction to Communication Skills: meaning and definition of communication, forms of
communication, barriers to effective communication, ways to overcome barriers in
communication; Communication Skills: Listening Skills, Speaking Skills, Reading Skills,
Writing Skills; Technical Communication; Digital Communication.
Unit II: Soft Skills for Professional Excellence
Introduction to soft skills: meaning, nature, scope and importance of soft skills in the present
organizational set up; managing interpersonal relationships: leadership skills, team work,
attitude, creativity, resilience etc.; nonverbal communication: body language and gestures,
significance and role of body language in effective communication across cultures.
Unit III: Written Communication
Formal letters, curriculum vitae and resume writing, writing e-mails, technical reports with an
emphasis on different styles and structures/formats.
Unit IV: Grammar and Punctuation
Parts of speech, tenses, subject verb, active passive, interjections, capitalization etc. Use of
comma, period, exclamation marks, ellipsis, question mark, colon, semi-colon, quotation
marks, apostrophe etc. Common errors and acceptable forms of English language.
  Part- II Language Laboratory
Unit I: Listening Skills
Listening Process and practice- introduction to recorded lectures, poems, interviews and
speeches, listening tests, problems in comprehension and retention, importance of listening in
organizational set up.
Unit II: Reading and Pronunciation Skills
Phonetics and Phonology: Introduction to sounds, vowel and consonant sounds, diphthongs
etc. IPA transcription of words, word stress, weak forms, voice, intonation, tone etc.
Unit III: Soft Skills
Proper use of Body Language: facial expressions, eye contact, gestures, postures and dressing;
emotions displayed by body language; different types of handshakes; desirable and undesirable
body language under different professional situations.

  12

Unit IV: Speaking Skills
Standard and formal speech: Activities like Group discussion, oral presentations, public
speaking, business presentations etc. Conversation practice and role playing, mock interviews
etc.
Course Outcome
At the end of this course the students will be able to communicate effectively with an increase
in their confidence to read, write and speak English fluently. They will also demonstrate a
significant increase in word power. The variety of exercises and activities that will be
conducted in the Language Lab will develop the skills needed to participate in a conversation
like listening carefully and respectfully to others’ viewpoints; articulating their own ideas and
questions clearly and overall students will be able to prepare, organize, and deliver an engaging
oral presentation.
Suggested Readings
    1. Daniel Jones. The Pronunciation of English. Cambridge: Cambridge University Press,
  1956.
    2. James Hartman& et al. Ed. English Pronouncing Dictionary. Cambridge: Cambridge
  University Press, 2006.
    3. J.D.O’ Connor. Better English Pronunciation. Cambridge: Cambridge University Press,
  1980.
    4. Lindley Murray. An English Grammar: Comprehending Principles and Rules. London:
  Wilson and Sons, 1908.
    5. Margaret M. Maison. Examine your English. Orient Longman: New Delhi, 1964.
    6. M. Ashraf Rizvi. Effective Technical Communication. Mc-Graw Hill: Delhi, 2002.
    7. William Sanborn and T.V.S Padmaja. Technical Communication: A Practical
  Approach. 6t ed. Delhi: Pearson, 2007.

  13'),
  ((SELECT id FROM course WHERE code='HSIC103'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '14', 'DEPARTMENT OF HUMANITIES & SOCIAL SCIENCES
  Programme: B. Tech
  Course Title: Financial Education
Course Category: IC  Internal: 50 Marks
Course Code: HSIC 103  Theory: 50 Marks
Credits: 3 (L-2, T-1)  Total: 100 Marks
Semester: 1st/2nd  Time: 3 hrs

Course Objectives
The purpose of this course is to empower the students with sound financial knowledge and
financial management skills for their long-term financial being. The course is designed with the
strong belief that financial well-being has a positive correlation with the overall well-being of an
individual as well as society.
Note for Examiner
The number of questions to be set will be six covering the entire syllabus. The examinees will be
required to attempt five questions. All questions shall carry equal marks.
UNIT-I Foundations of Finance
  Need for Financial Planning, Financial Goals, Financial Management: Concept, Finance
  Function. Banking in India: Concepts of Banking, Types of Bank Accounts and Deposits
UNIT-II Investment Management-I
  Investment Goals: Basic Investment Objectives, Time Frame, Assessing Risk Profile,
  Diversification and Asset Allocation.
UNIT-III Investment Management-II
  Investment and Saving alternatives for a Common Investor: Insurance, Stocks, Bonds,
  etc. Stock Markets: Primary and Secondary Markets. Criteria for Stock Selection.
UNIT-IV Financial Planning and Mutual Funds
  Financial Planning: Concept and Objectives. Mutual Funds: Concept and History of
  Mutual Funds in India. Types of Mutual Funds.
Course Outcomes
  After the completion of this course, students will be able to acquire financial
  management skills-essential life skills for 21st Century. It will also enhance their
  financial literacy and equip them with knowledge and skills critical to make financial
  decisions.
Suggested Readings
 1.  Financial Management – I.M. Pandey (Vikas Publishing House, New Delhi)
 2.  Financial Management—MY Khan & PK Jain (Tata McGraw Hill)
 3.  Financial management—Sheeba Kapil (Pearson)

  14'),
  ((SELECT id FROM course WHERE code='HSIC102'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '15', 'DEPARTMENT OF HUMANITIES & SOCIAL SCIENCES
  Programme: B. Tech
  Course Title: Economics for Engineers
Course Category: IC  Internal: 50 Marks
Course Code: HSIC 102  Theory: 50 Marks
Credits: 3 (L-2, T-1)  Total: 100 Marks
Semester: 1st/2nd  Time: 3 hrs
Course Objectives
    To enable students to understand the economics principles applicable to engineering.
    To learn the techniques of economic decision making.
    To familiarize the students with basic fundamentals of Indian financial economy.
Unit I: Introduction and Demand Analysis
  Principles of economics, how markets work: market forces of supply and demand,
  Elasticity and its application, Consumer equilibrium.
Unit II: Theory of Production, Cost and Firms
  Firms’ production, cost and revenue behavior; resources optimization; Firms’ behavior
  under- competitive markets, monopoly, monopolistic competition and oligopoly.
Unit III: Engineering Economy
  Time value of money: Single-Payment and Uniform Series, Nominal and Effective
  Interest Rates, Evaluation Methods: Present Worth Analysis, Annual Worth Analysis,
  Rate of Return Analysis
Unit IV: Indian Economy
  Nature and size of Indian Economy, Problems- Poverty, Unemployment, Inflation,
  measures for controlling these problems, Monetary policy- meaning, objectives, tools,
  fiscal policy-meaning, objectives, tools.
Course Outcomes
    The Students will be able to understand the concepts of economics and will also learn
  to use the principles of economics in the engineering discipline.
    The course would develop the insight of students in understanding the consumer and
  production behavior and functioning of market economy.
    They would also learn the implications of monetary and fiscal policies in Indian
  economy.
Suggested Readings
    N. Gregory Mankiw. Principles of Microeconomics,
    Krugman, Paul, and Robin Wells. Microeconomics. New York, NY
    WG Sulliman, EM Wicks and CP Koelling, Engineering Economy, Pearson
    Chan S Park, Fundamentals of Engineering Economics, Always Learning
    Anindya Sen, Microeconomics, OUP India
    Leland T. Blank & Anthony J. Tarquin, Engineering Economy, McGraw-Hill
    Hal R. Varian Intermediate Microeconomics, W. W. Norton and Company
    Ruder Dutt and Sundaram, Indian Economy, S. Chand

  15'),
  ((SELECT id FROM course WHERE code='HSIC104'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '16', 'DEPARTMENT OF HUMANITIES & SOCIAL SCIENCES
  Programme: B. Tech
  Course Title: Business Studies
Course Category: IC  Internal: 50 Marks
Course Code: HSIC 104  Theory: 50 Marks
Credits: 3 (L-2, T-1)  Total: 100 Marks
Semester: 1st/2nd  Time: 3 hrs
Course Objectives
     The course is designed to introduce the concepts of business to the students.
     The course aims to acquaint the students about business processes from beginning to
  the end.
Unit I: Fundamentals of Business
Business: Meaning and Characteristics of Business, Objectives of Business. Classification of
Business Activities: Industry and Commerce, Industry types: Primary, Secondary and Tertiary.
Types of Businesses: Sole Proprietorship, Partnership, Limited Liability Company, Private and
Public company. Formation of Company: stages and required documents.
Unit II: Sources of Business Finance
Business Finance: Concept and Importance. Types of Sources of Finance: Long-term Sources
(Equity Shares, Preference shares, Debentures, Term Loans, Retained earnings, Loan from
financial institutions, etc.), Short Term Sources (Trade Credit, Accrued Expenses, Commercial
Papers, Public Deposits etc.)
Unit III: Small Business and Entrepreneurship Development
Entrepreneurship Development (ED): Concept, Characteristics and Need. Process of
Entrepreneurship Development: Start-up India Scheme, Intellectual Property Rights and
Entrepreneurship. Small Scale Enterprise: Classification and Roles; Issues and Challenges
faced by Small Scale Enterprises, Government schemes for small scale industries.
Unit IV: Business Services and Social Responsibility of Businesses
Business services: Meaning and Types, Emerging Modes of Business, E-business: Concept,
Scope and Benefits, E-commerce, EDI, Web-based Marketing, Role of Internet and Risk
Management; Social Responsibility of Business. Role of Business in Sustainable Development.
Course Outcomes
     The course would help the students in understanding different forms and numerous
  processes of a business.
     The course would sensitize the students to practice the ethical behaviour of the
  businesses.
Suggested Readings
Business Studies: Learners Book, Oxford Successful
Business Studies: 2018/19 Undergraduate Guide, University of Huddersfield
Business Studies: Fourth Edition, Ian Chambers and David Gray, CP.

  16'),
  ((SELECT id FROM course WHERE code='MAIC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '17-19', 'Course Code  L-T-P-C
  Differential Calculus and Differential Equations
 MAIC 101  3-1-0-4

Pre-Requisites:
The basic knowledge of matrix theory, Limit, Continuity, Differen-
tiability for functions of one variable, Basic knowledge of ordinary
differential equations of first order and first degree.
Course Objective:
  1. To understand matrix algebra and its applicability in different
     engineering fields.
  2. To incorporate the knowledge of calculus and its subsequent en-
     gineering applications.
  3. To be able to form and solve the ordinary differential equation
     with engineering applications.
  4. To have the idea of Laplace transforms with engineering appli-
     cations.

Unit 1:  8L
Matrix Theory: Matrices, Related matrices, Rank of a matrix, Lin-
ear dependence and independence of vectors, Consistency of linear
systems of equations, Solution of linear system of equations, Eigen
value problem, Eigen values and Eigen vectors with their properties,
Cayley-Hamilton theorem and its applications, Similarity of matri-
ces, Diagonalization of a real symmetric matrix, Quadratic form and
their reduction to canonical form.

Unit 2:  8L
Multivariable Calculus: Limits, continuity and differentiability
of multivariable functions, Partial differentiation and its geometrical
interpretation, Total differential, Composite function, Taylor’s and
Maclaurins expansion for the functions of two variables, Maxima and

Scheme and Syllabi  10  w.e.f. 2023 - 24

  17

minima, Lagrange’s method of undetermined multipliers, Jacobian,
Difference between total derivative and Jacobian.

Unit 3:  8L
Ordinary Differential Equations: Linear higher order ordinary
differential equations with constant coefficients, Solutions of homoge-
nous and non-homogenous equations, Method of variation of param-
eters, Method of undetermined coefficients, Equations reducible to
linear equations with constant coefficients (Euler-Cauchy and Leg-
endres linear differential equations).

Unit 4:  8L
Applications of Differential Equations: First order differential
equations: Newton’s law of cooling, Radioactive decay, L-R and C-R
circuits. Second order differential equations: Mechanical Vibrations-
Free undamped and damped vibrations, Forced Oscillations, Reso-
nance phenomenon. Electrical Vibrations, Series LCR circuit, Anal-
ogy with mass spring system, LCR circuit with voltage source, Com-
plex impedance and Resonance phenomena.

Unit 5:  8L
Laplace Transforms: Laplace transforms- Definition, Laplace trans-
forms of standard functions and their properties, Inverse Laplace
transforms and its properties, Convolution theorem, Initial and final
values theorems, Laplace transforms of periodic functions, Heaviside
unit step function, Dirac-delta function, Solution of ordinary differ-
ential equations.

Text Books:
  1. Erwin Kreyszig, Advanced Engineering Mathematics, 9th Edi-
     tion, Wiley India Pvt. Ltd., 2011.

Scheme and Syllabi  11  w.e.f. 2023 - 24

  18

2. Paras Ram, Engineering Mathematics through Applications, 2nd
     Edition, CBS Publishers, 2015.
Reference Books:
  1. G. B. Thomas and R.L. Finney, Calculus and analytical geome-
     try, 9 th Edition, Pearson Education, 5th Indian Reprint, 2002.
  2. Peter V. O’ Neil, Advanced Engineering Mathematics, 5th Edi-
     tion, Thomson, Book/Cole, 2003.
  3. A. K. Nandakumaran, P. S. Datti, and Raju K. George, Ordi-
     nary Differential Equations, Principles and Applications Cam-
     bridge University Press, 2017.
Course Outcomes:
At the end of the course, the student will be able to:
 CO1  Understand and analyze the theoretical and practical aspects of matrix
  applications
 CO2  Identify extreme values of functions and interpret the engineering problems
 CO3  Model simple physical problems as differential equations, analyze and
  interpret the solutions
 CO4  Use Laplace transforms to solve ordinary differential equations

Scheme and Syllabi  12  w.e.f. 2023 - 24

  19'),
  ((SELECT id FROM course WHERE code='MAIC102'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '67-69', 'Course Code  L-T-P-C
  Integral Calculus and Difference Equations
 MAIC 102  3-1-0-4

Pre-Requisites:
The basic knowledge of Differentiation, Integration, Summation, Scalars,
Vectors and Trigonometrical functions.
Course Objective:
  1. To provide the students with sufficient knowledge of Integral
     Calculus and its applications.
  2. To have the knowledge of vector calculus and its physical inter-
     pretation with applications.
  3. To have the idea of difference equation and Z-transforms with
     engineering applications.
  4. To have the knowledge of fundamental concept of Fourier series
     and its applications.

Unit 1:  8L
Power Series Solutions and Special Functions: The Strum-
Liouville Problem, Orthogonality of eigen functions, Ordinary and
singular points of an equation, Series solution about an ordinary
point using Power series solutions, Series solution about a regular
singular point using Frobenius method, Solution of Legendre’s and
Bessel’s differential equations, Legendre’s and Bessel’s functions.

Unit 2:  8L
Multiple Integrals:Evaluation of double integrals (Cartesian and
polar coordinates), Change of order of integration, Change of vari-
ables between cartesian and polar coordinates, Applications of Dou-
ble Integrals, Triple integrals, Change of variables between Cartesian,
cylindrical and spherical polar co-ordinates, Applications of triple in-
tegrals, Beta and Gamma functions, Dirichlet integrals.

Scheme and Syllabi  13  w.e.f. 2023 - 24

  67

Unit 3:  8L
Vector Calculus :Scalar and vector valued functions, Gradient of a
scalar point function and its geometrical interpretation, Directional
derivative, Divergence and curl of a vector point function and their
physical interpretations, Statement of vector identities, Scalar and
velocity potentials, Line, surface and volume integrals, Statement
of Green’s, Stoke’s and Gauss divergence theorems, Verification and
evaluation of vector integrals using these theorems.

Unit 4:  8L
Difference Equations and Z - Transforms:Difference Equation-
Definition of Difference equation, First and second order difference
equations with constant coefficients, Fibonacci sequence, Solution of
difference equations (complementary functions and particular inte-
grals).
Z-transform- Definition of Z-transform, Relation between Z- trans-
form and Laplace transforms, Z-transforms of standard functions, In-
verse Z-transforms, Inverse Z-transforms by partial fraction method,
Inverse Z-transforms by convolution method, Solution of simple dif-
ference equations using Z-transforms.

Unit 5:  8L
Fourier Series: Fourier series, Euler’s formula, Dirichlet’s condi-
tions, Fourier series expansion of functions having point of discon-
tinuity, Change of interval, Expansion of even and odd functions,
Half range series, Typical wave-forms, Parseval’s formula, Practical
Harmonic Analysis.

Text Books:
  1. Erwin Kreyszig, Advanced Engineering Mathematics, 9th Edi-
     tion, Wiley India Pvt. Ltd., 2011.

Scheme and Syllabi  14  w.e.f. 2023 - 24

  68

2. Paras Ram, Engineering Mathematics through Applications, 2nd
     Edition, CBS Publishers, 2015.
Reference Books:
  1. Michale D. Greenberg, Advanced Engineering Mathematics, 2nd
     Edition, Pearson Education, First Indian reprint, 2002.
  2. Peter V. O’ Neil, Advanced Engineering Mathematics, 5th Edi-
     tion, Thomson, Book/Cole, 2003.
Course Outcomes:
At the end of the course, the student will be able to:
 CO1  Understand and analyze the practical aspects of series solution and special
  functions
 CO2  Interpret the line, surface and volume integrals
 CO3  Use Z-transforms to solve difference equations analytically
 CO4  Apply the analytical technique to express periodic functions as a Fourier
  series

Scheme and Syllabi  15  w.e.f. 2023 - 24

  69'),
  ((SELECT id FROM course WHERE code='PHIC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '20-22', 'DEPARTMENT OF PHYSICS
  (B. TECH. 1ST Sem. All Branches)
  (CORE COURSES)

  PHICIOl: ENGINEERING PHYSICS

  L  T  P  Credits  Total contact
  hours
  2  1  2  4  60

Pre-requisite: ...

Brief Description about the course: This course includes the fundamentals of physics essential for
various engineering disciplines pertaining to quantum mechanics, electromagnetism, lasers and
optical fiber technology. Moreover, theory of relativity and the nuclear technology for sustainable
energy applications are included.

Course Content

  UNIT-I (7 hrs.)
Quantum Mechanics:  Basics of quantum mechanics, De-Broglie''s hypothesis, Uncertainty
principle, Probability and Wave function, Postulates of quantum mechanics, Time-dependent and
Time-independent Schrodinger wave equations, Particle in I-D potential box, Quantum Tunnelling
Phenomenon.

Electromagnetic Theory: Maxwell''s equations In vacuum and medium, Electromagnetic Waves,
Propagation Energy and Poynting Vector.

  UNIT-II (7 hrs.)
Physics of Solids: Crystal Structure, Space Lattice, Translation vectors; Crystal Symmetry, Miller
indices, Simple and close-packed -crystal structures with examples, Free electron theory: Drude''s
Theory of Conduction; Quantum theory of free electrons, Fermi-Dirac distribution function, Fermi­
level and Fermi Energy; Density of States, equilibrium and extrinsic carrier concentration.

  3

  20

UNIT-II (7 hrs.)
Laser Physics: Basic principle and characteristics of lasers, Einstein''s coefficients, Types of the
Lasers: He-Ne laser, Semiconductor Laser, Applications of Lasers in research and industry, Safety
protocols of lasers.

Fundamentals of Optical Fiber: Acceptance angle, Numerical aperture, Classification of optical
fibres,  Fiber losses,  Fiber manufacturing,  Applications of optical  fibre  in industry and
communications.

  UNIT-IV (7 Hours)
Special Theory of Relativity: Frame of references: inertial and non-inertial, Galilean transformation,
The  Michelson-Morley  experiment,  Postulates  of Special  Theory  of Relativity,  Lorentz
transformations, Length contraction, Time dilation, Velocity addition, Variation of mass with
velocity, Mass-energy equivalence.

Nuclear Technology: Interaction of radiation with matter, Neutron cross-section, Nuclear Reaction,
Moderators, Reactor criticality, Nuclear reactors for power generation, Safety protocols.

Text BookslReference Books

T -I: S.O.Pillai, "Solid state Physics", New age International publishers, 2012.
T-2: A. Beiser, "Concepts of Modern Physics", McGraw-Hill, 2008.
R-I: DJ. Griffiths, "Introduction to Electrodynamics", PHI Learning Publishers, New Delhi, 2012.
R-2: S. M. Sze, K. K. Ng, "Physics of Semiconductor Devices", United Kingdom, Wiley, 2021.
R-3: M. A. Wahab, "Solid State Physics", Narosa, 2022.
R-4: John Lilley, "Nuclear Physics, Principles and applications", Wiley, 2016.

Course Outcomes:
At the end of the course students will be able to:
CO I: Develop the skills to apply various Physics concepts in tackling real life engineering problems.
C02: Apply the ideas of Quantum Mechanics and Electromagnetic Theory for designing and
  development of various technological equipments.
C03: Understand various technological domains of applicability of Crystal Physics, Theory of
  Relativity, and Nuclear technology.
C03: Design and develop relevant applications based on fundamentals of Optics, LASERs, and
  Optical Fibers.

  4

  21

DEPART-MENT OF PHYSICS
  (B. TECH. 1ST Sem. All Branches)
  (CORE COURSES)

  PHICIOl: ENGINEERING PHYSICS (Practical)

  List of the Experiments:

1. To find the wavelength of Sodium light by using diffraction grating.

2. To find the wavelength of different colours of white light by using diffraction grating.

3. To study Polarization of light and verification of Malus''s law.

4. To find the wavelength of light by using Newton''s rings.

5. To find the specific rotation of a solution by using a polarimeter.

6. To find the temperature coefficient of resistance of platinum by using platinum resistance
   thermometer.

7. To study the variation of magnetic field along the axis of a circular coil carrying current and
   to estimate the radius of the coil.

8. To find the frequency of AC mains using sonometer.

9. To plot a graph between the difference of temperature of two junctions and thenno e.m.f. for a
   thermocouple using a potentiometer.

10. To study I-V characteristics and rectification properties of a semiconductor diode.

11. To find high resistance by leakage method.

12. To find a) the wavelength of sodium light b) the thickness of a thin transparent sheet by
    Michelson''s interferometer.

13 . Wavelength, angle of divergence and Particle size determination using Diode Laser.

14. To determine the acceptance angle and numerical aperture of an optical fibre.

15. To study the characteristics of a GM Tube and detennination of its operating voltage and
    Plateau length.

  5

  22'),
  ((SELECT id FROM course WHERE code='PHIC102'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '70-72', 'DEPARTMENT OF PHYSICS
  (B. TECH. 2 nd Sem. for CE, ME & PIE Branches)
  (CORE COURSES)

  PHICI02: ADVANCED ENGINEERING PHYSICS

  L  T  P  Credits  Total contact
  hours
  2  1  2  4  60

Pre-requisite: PHIC 101

Brief Description about the course: The course consists of mechanical and thermal properties of
materials and their applications. The concepts of Magnetic Materials, Superconductors, and
Nanotechnology are included for the application in futuristic technologies.

Course Content

  UNIT-I (7 Hours)

Mechanical Properties of Materials: Phase diagram, Gibbs phase rule, Binary phase diagram its
types, solid solution: Hume Rothery Rules, Concepts of stress and strain, Stress-Strain diagrams;
Tensile test; Elastic deformation, Plastic deformation. Impact Testing & toughness behavior.
Hardness of materials, Imperfections and dislocations.

  UNIT-II (7 Hours)

Thermal Physics: Seebeck effect, Peltier effect, Thomson effect, Kelvin relationships, Wiedemann­
Franz law, Thermal equilibrium, Entropy, The laws of thermodynamics, Thermal conductivity of
bulk materials, Phonons: lattice vibration heat transfer, specific heat of solids, classical, Einstein and
Debye Model, Ideal quantum gases: Maxwell-Boltazmann, Bose-Einstein, and Fermi-Dirac statistics.

  UNIT-III (7 Hours)

Magnetic Materials and Superconductors: Orbital diamagnetism, Magnetic moments, Classical
theory of Paramagnetism, Ferromagnetism, Molecular field theory and domains, applications of
magnetic materials, Type I and II Superconductors, London equation, Applications of
superconductivity.

  6

  70

UNIT-IV (7 Hours)

Nanotechnology: Classifications of nanomaterials (3D, 2D, ID and OD) and their density of states,
Nanocomposites, Carbon nanotubes (CNTs), Graphene, Nanoclusters, Structural, thennal and
mechanical properties of nanomaterials, Bottom-up and Top-down synthesis processes, Basic
characterization techniques for nanomaterials, Applications of nanotechnology.

Text BookslReference Books

T-1: D. K. Bhattacharya, "Engineering Physics", Oxford University Press, 2015.
T-2: Schroeder, V. Daniel, "An introduction to thermal physics", 1999
R-l: Charles P. Poole, Jr and Frank J. Owens, "Introduction to Nanotechnology", John Wiley &
Sons, 2006.
R-2: S. C. Garg, R. M. Bansal and C. K. Ghosh, "Thermal physics", Tata McGraw-Hill Education,
2013
R-3: Wole Soboyejo, "Mechanical Properties of Engineered Materials", Marcel Dekker, 2003

Course Outcomes:
At the end of the course Students will be able to:
CO 1: Develop the skill to apply various physics concepts for advance engineering problems.
C02: Apply fundamentals of mechanical and thennal properties of materials for technological
  applications.
C03: Apply the concepts of Magnetic Materials, Superconductors, and Nanotechnology.
C04: Design and develop materials for industrial applications.

  7

  71

DEPARTMENT OF PHY JCS
  (B. TECH. 2nd Sem. for CE, ME, PIE, ECE, EE, and HoT Branches)
  (CORE COURSES)

  ADVANCED ENGINEERING PHYSICS (PRATICAL)

  List of the Experiments:

1. To find the value of Planck''s constant by photo electric cell.

2. To measure HaJI''s co-efficient of Germanium and calculation of charge carrier concentration.

3. To measure the velocity of ultrasonic waves in organic liquids.

4. To study the decay of charge on a capacitor and to find its capacitance.

5. To determine the resistivity of a semiconductor by four probe method.

6. To determine the band gap of germanium from the variation of its resistivity with temperature.

7. To study the intensity response of a cadmium sulphide cell.

8. To calibrate a voltmeter by using potentiometer.

9. To study the shunting effect of a voltmeter on voltage measurement.

10. To measure i) Saturation magnetization ii) coercivity and iii) retentivity in a given
    ferromagnetic material.

II. To study the dielectric properties of a dielectric at different frequencies by resonance method.

12. To draw the I-V characteristics of a solar cell under constant illumination.

13. To verify Stefan''s radiation law by using incandescent filament.

14. To verify the inverse square law of gamma ray using GM counter.

15. To calibrate an electromagnet using Guoy''s balance.

16. To determine the moment of inertia using flywheel about its own axis of rotation.

17. To determine the acceleration due to gravity by compound pendulum.

  8

  72'),
  ((SELECT id FROM course WHERE code='PHIC103'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '72-74', 'DEPARTMENT OF PHY JCS
  (B. TECH. 2nd Sem. for CE, ME, PIE, ECE, EE, and HoT Branches)
  (CORE COURSES)

  ADVANCED ENGINEERING PHYSICS (PRATICAL)

  List of the Experiments:

1. To find the value of Planck''s constant by photo electric cell.

2. To measure HaJI''s co-efficient of Germanium and calculation of charge carrier concentration.

3. To measure the velocity of ultrasonic waves in organic liquids.

4. To study the decay of charge on a capacitor and to find its capacitance.

5. To determine the resistivity of a semiconductor by four probe method.

6. To determine the band gap of germanium from the variation of its resistivity with temperature.

7. To study the intensity response of a cadmium sulphide cell.

8. To calibrate a voltmeter by using potentiometer.

9. To study the shunting effect of a voltmeter on voltage measurement.

10. To measure i) Saturation magnetization ii) coercivity and iii) retentivity in a given
    ferromagnetic material.

II. To study the dielectric properties of a dielectric at different frequencies by resonance method.

12. To draw the I-V characteristics of a solar cell under constant illumination.

13. To verify Stefan''s radiation law by using incandescent filament.

14. To verify the inverse square law of gamma ray using GM counter.

15. To calibrate an electromagnet using Guoy''s balance.

16. To determine the moment of inertia using flywheel about its own axis of rotation.

17. To determine the acceleration due to gravity by compound pendulum.

  8

  72

DEPARTMENT OF PHY Ie
  (B. TECH. 2 nd Sem. For ECE Branch)
  (CORE COURSES)

  PHICI03: ADVANCED ENGINEERING PHYSICS

  L  T  P  Credits  Total contact
  hours
  2  1  2  4  60
Pre-requisite:PHIC 101

Brief Description about the course: The course is focused on the electronic and
semiconducting properties of materials to understand theories relevant to the engineering
principles of Semiconductor devices. The content consists of topics related to the technical
and strategic problems, electronic devices, their operations and applications.

COURSE CONTENTS

  UNIT-I (7 H)

BAND THEORY OF SOLIDS: Periodic structures, Origin of Energy Bands- Bloch
Theorem, Kronig-Penney Model (qualitative), E-K diagram, Brillouin Zones- extended,
reduced and periodic zone schemes, Electrons and Holes, Concept of effective mass, Material
classification, Direct and Indirect Band gap semiconductors.

  UNIT-II (7 H)

SEMICONDUCTOR  PHYSICS:  Crystal  properties,  Elemental  and  Compound
semiconductors, Density of States, Doping- donors and acceptors, Equilibrium and extrinsic
carrier concentration, Carrier transport, Drift and Diffusion current, Mobility, Einstein
relation, Excess carrier generation and recombination.

  UNIT-III (7 H)

PHYSICS OF JUNCTIONS: Types of junctions: Metal-Metal; Metal-Semiconductor;
Semiconductor-Semiconductor-  Homo-junction  and  Hetero-junction,  Metal-Insulator
junction, Metal-Insulator-Semiconductor junction Concepts of Quasi-Fermi levels, Carrier
  73

...

  transport equations and solutions, PN Junctions- Abrupt junction: Electric field, Potential,
  Capacitance profiles, ideal diode, real diode and their characteristics.

  UNIT-IV (7 H)

  DEVICES AND APPLICATIONS: Bipolar Junction Transistor- Structure, Operation, and
  Transport Characteristics, BJT as amplifiers; JFET- Structure, Operation, and Transport
  Characteristics; MOSFET- Structure, Operation-Condition of inversion, and Transport
  Characteristics, C-V characteristics, MOSFET types.

  COMPOUND SEMICONDUCTORS - Requirements for high speed circuits, Materials­
  Binary and Ternary compound semiconductors, Dopants and impurities in GaAs and InP.

  Text BookslReferencesNideo lectures

  T-l: Charles Kittel, "Introduction to Solid State Physics", John Wiley publication, 2013.
  T-2: S. M. Sze, "Semiconductor Devices: Physics and Technology", John Wiley
  publication, 2013.
  R-l: Ben G. Streetman, "Solid State Electronic Devices", Prentice-Hall ofIndia, 2012.
  R-2: Jaspreet Singh, "Semiconductor Devices-Basic Principles",John Wiley publication,
  2008.
  R-3: Donald A. Neamen, "Semiconductor Physics and Devices: Basic Principles",4th
  Edition, McGraw-Hill publication, 2012.
  R-4: M.S.Tyagi, "Introduction to Semiconductor Materials and Devices" Wiley, 1991.
  V-I: Solid State Devices - (Electronics and Communication Engineering course from lIT
  Madras) NPTEL Lecture Videos by Prof. S. Karmalkar from lIT Madras.
  V-2: High Speed Devices and Circuits - (Electronics and Communication Engineering
  course from lIT Madras) NPTEL Lecture Videos by Prof. K.N. Bhat from lIT Madras.

  Course Outcomes:
  At the end of the course, students win be able to:
  CO 1: Solve and realize Electronics Engineering problems and challenges.
  C02: Understand fundamentals of semiconducting properties of materials for technological
  applications.
  C03: Realize the operation mechanism of various electronic devices.
  C04: Soive technical and strategic problems related to electronic devices and operations.
  74

  N fj I  11.'),
  ((SELECT id FROM course WHERE code='PHIC104'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '72, 75-76', 'DEPARTMENT OF PHY JCS
  (B. TECH. 2nd Sem. for CE, ME, PIE, ECE, EE, and HoT Branches)
  (CORE COURSES)

  ADVANCED ENGINEERING PHYSICS (PRATICAL)

  List of the Experiments:

1. To find the value of Planck''s constant by photo electric cell.

2. To measure HaJI''s co-efficient of Germanium and calculation of charge carrier concentration.

3. To measure the velocity of ultrasonic waves in organic liquids.

4. To study the decay of charge on a capacitor and to find its capacitance.

5. To determine the resistivity of a semiconductor by four probe method.

6. To determine the band gap of germanium from the variation of its resistivity with temperature.

7. To study the intensity response of a cadmium sulphide cell.

8. To calibrate a voltmeter by using potentiometer.

9. To study the shunting effect of a voltmeter on voltage measurement.

10. To measure i) Saturation magnetization ii) coercivity and iii) retentivity in a given
    ferromagnetic material.

II. To study the dielectric properties of a dielectric at different frequencies by resonance method.

12. To draw the I-V characteristics of a solar cell under constant illumination.

13. To verify Stefan''s radiation law by using incandescent filament.

14. To verify the inverse square law of gamma ray using GM counter.

15. To calibrate an electromagnet using Guoy''s balance.

16. To determine the moment of inertia using flywheel about its own axis of rotation.

17. To determine the acceleration due to gravity by compound pendulum.

  8

  72

DEPARTMENT OF PHYSICS
  (B. TECH. 2 nd Sem. For EE Branch)
  (CORE COURSES)

  PHICI04: ADVANCED ENGINEERING PHYSICS

  L  T  P  Credits  Total contact
  hours
  2  1  2  4  60
Pre-requisite: PHIC 101

Brief Description about the course:  This course provides the knowledge of the electrical and
magnetic fields for simple configurations under static and dynamic electromagnetism relevant to the
engineering systems and devices. The propagation of EM waves and Maxwell''s equation in different
forms and different media are elaborated.

    Course Contents

  UNIT-I (6 Hours)
  Vector Calculus & Electrodynamics: Vectors, Gradient, Divergence, Curl and their physical
  significance, Divergence theorem, Stoke''s thereom.
  Electrostatics: Electric field due to distributed charges configurations lines of charges, Uniform
  plane surface and spherical volume charge distributions: Behavior of conductors and dielectric in
  electrostatic fields, Boundary conditions.

  UNIT-IT (8 Hours)
 Magnetostatics: Biot - Savart''s Law, Ampere''s Circuital Law and their Applications,
 capacitance and inductance calculations for simple configurations; Time varying fields­
 displacement  current,  wave  equation  for  Poynting  vector,  electromagnetic  radiation,
 electromagnetic wave propagation in free space and isotropic dielectric medium, Boundary
 conditions, Poynting theorem, Maxwell''s equations.

  11

  75

UNIT-III (6 Hours)
Magnetic Materials and Superconductors: Magnetization M, relation between B, H & M.
Bohr megneton, Hysteresis loss, Antiferromagnetism, Ferromagnetism & Ferrites, Orbital
diamagnetism,  Atomic  magnetic  moments,  orbital  diamagnetism,  Classical  theory of
Paramagnetism, Ferromagnetism, molecular field theory and domains, applications of magnetic
materials, Type I and II Superconductors, London equation, Applications of superconductivity.

  UNIT-IV (8 Hours)
Electromagnetic Theory: Wave equation, Uniform plane waves, Plane wave propagation in
dielectric and conducting media, Reflection and refraction of plane wave (Normal incidence) ,
Wave propagation in bounded media, Ground waves, Sky waves and space waves,
Wave Guides: Parallel plane guide, TE, TM and TEM waves, Rectangular and cylindrical wave
guides, resonators and Planes transmission line; Strip lines, Micro strip line.

  TextBookslReference Books
   T-l: M. N. O. Sadiku, Elements of Electromagnetics, Oxford University Publication, 2014.
   T-2: W. Hayt, Engineering Electromagnetics, McGraw Hill Education, 2012.
   R-l: A. Pramanik, Electromagnetism-Problems with solution, Prentice Hall India, 2012.
   R-2: Jaspreet Singh, John Wiley, Semiconductor Devices-Basic Principles, publication 2008.
   R-3: Arthur Beiser, Tata McGraw Hill, Concept of Modem Physics, publication, 2003.
   R-4: Pramanik, Electromagnetism - Theory and applications, PHI Learning Pvt. Ltd, New
   Delhi, 2009.
   R-5: A. S. Vasudeva, Modern Engineering Physics, S. Chand.

Course Outcomes
At the end of the course students will be able to:
 CO 1: understand the physics underlying the electric and magnetic fields.
 C02: understand the operation mechanism of basic laws of electromagnetism relevant to the
  engineering principles of materials and devices.
 C03: understand the applications of EM waves, Maxwell''s equation in different forms and
  different media.

  12

  76'),
  ((SELECT id FROM course WHERE code='PHIC105'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '72, 77-78', 'DEPARTMENT OF PHY JCS
  (B. TECH. 2nd Sem. for CE, ME, PIE, ECE, EE, and HoT Branches)
  (CORE COURSES)

  ADVANCED ENGINEERING PHYSICS (PRATICAL)

  List of the Experiments:

1. To find the value of Planck''s constant by photo electric cell.

2. To measure HaJI''s co-efficient of Germanium and calculation of charge carrier concentration.

3. To measure the velocity of ultrasonic waves in organic liquids.

4. To study the decay of charge on a capacitor and to find its capacitance.

5. To determine the resistivity of a semiconductor by four probe method.

6. To determine the band gap of germanium from the variation of its resistivity with temperature.

7. To study the intensity response of a cadmium sulphide cell.

8. To calibrate a voltmeter by using potentiometer.

9. To study the shunting effect of a voltmeter on voltage measurement.

10. To measure i) Saturation magnetization ii) coercivity and iii) retentivity in a given
    ferromagnetic material.

II. To study the dielectric properties of a dielectric at different frequencies by resonance method.

12. To draw the I-V characteristics of a solar cell under constant illumination.

13. To verify Stefan''s radiation law by using incandescent filament.

14. To verify the inverse square law of gamma ray using GM counter.

15. To calibrate an electromagnet using Guoy''s balance.

16. To determine the moment of inertia using flywheel about its own axis of rotation.

17. To determine the acceleration due to gravity by compound pendulum.

  8

  72

!

  DEPARTMENT OF PHYSICS
  (B. TECH. 2 nd Sem. For HoT Branch)
  (CORE COURSES)

  PHICI05: ADVANCED ENGINEERING PHYSICS (THEORY)

  L  T  P  Credits  Total contact
  hours
  2  1  2  4  60

    Pre-requisite: PHIC 101

    Brief Description about the course: This course is focused on the working principle of different
    types of sensors and development of sensors utilizing advanced sensing materials. Fabrication
    techniques and applications in AI and HoT are elaborated.

     Course Contents

  UNIT-I (7 L)

    Principles of Sensors and Actuators: Fundamentals and Physics of sensors and Actuators
    (sensing and actuation mechanisms), physical effects, measurement, measurement standards,
    measurement errors, Static and Dynamic Characteristics, reliability, aging test, failure
    mechanisms and their evaluation and stability study, Sensor signal amplification and filtering,
    Analog-to-digital conversion, Noise reduction techniques, Digital signal processing for sensor
    data.

  UNIT-II (7 L)
    Materials and Fabrication methods for Sensors: Semiconductors, Metal Oxides, Polymers,
    Metals, piezoelectric materials, optical glass fibres and Organic Materials; Sensor configurations
    and geometries, Thin/thick film fonnation techniques: Physical, chemical and Langmuir­
    Blodgett film formation techniques, Screen Printing Techniques, Lithography.

  UNIT-ill (7 L)
    Sensors:
    Optoelectronic sensors, Mechanical sensors, Thermal sensors, Magnetic sensors, Gas sensors,
    pressure sensors, chemical and bio sensors, Calibration methods and standards, Error sources and
    compensation techniques, Sensor fusion and multi-sensor systems.

  UNIT-IV (7 L)
    Sensor Systems and Applications:
    Sensors for AI and loT: Agriculture, health care, environmental monitoring and control, smart
    home, transportation, Smart Energy monitoring; robotic, nautical, aeronautical and space
    measurement systems; Flexible and wearable sensors; Sensors for lab on chip, sensor networks,
    Nanosensors and MEMS technology.

  13

  77

Text BookslReference Books:
T-I: Clarence W. de Silva, "Sensors and Actuators- Engineering System and Instrumentation", CRC
Press, Taylor &Francis Group, 2016.
T-2: S.c. Mukhopadhyay, "Next Generation Sensors And Systems", Sringer, 2016.
R-I: J. Fraden, "Handbook of Modern Sensors: Physical, Designs, and Applications", AlP Press,
Springer, 20 IO.
R-2: D. Patranabis, "Sensors and Transducers", PHI Publication, New Delhi, 2003.
R-3: Ezzat G. Bakhoum, "Micro- and Nanoscale Sensors and Transducers", CRC press, 2019.
R-4: P.T. Moseley, B.C. Toefield "Solid State Gas Sensors", CRC Press, 1987.
R-5: S. M. Sze, "Semiconductor Sensors", Wiley-Interscience, 1994. ISBN: 978-0471546092.

Course Outcomes
At the end of the course students will be able to:
CO I: Students will be able to design various sensors.
C02: Students will learn about various materials and methods of fabrication of sensors.
C03: Students will be familiarized to the practical approaches for different sensors and their
  utilization for AI and HoT Applications.

  14

  78'),
  ((SELECT id FROM course WHERE code='CEIC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '23', 'B.Tech. (Civil Engineering) - Syllabi of various courses

  CEIC 10 1 Engineering Graphics

 Pre-requisite: None
  Total contact
  L  T  P/D  Credits
  hours
  2  0  3  .3  5

  Brief descriptioll of the course: This course will provide studcnts with adequate knnwlcdgc
  and experience in prepi1ring engineering dri1wings using AutoCAD i1nd help studelHs i1equire
 the skills pertinei1t to the production of properly detailed, fonmtted ,lJ1d dimensioned
 ctlglllccri ng drn wi 11 gs.
 Course Content:
 Unit 1. Orthographic Projections (6 hrs)
 Basics of lettering. dimensiuning, types of seules and their uses. types of projections.
 reference plancs and qu,ldr,lnts, projection \)f points keeping it in dlttcrenl quadrants.
 i1uxiliary pli1nes. Theory of orthogri1phic projections, planes of projection, four qu,H1ri1l1!s,
 first i1ngle projection, third angle projection, BIS Code of pn1ctice, \iew i1ni1lysis, orienu1tion
 of the object. l<lying out three view druwings. hidden lines uncl curves surfuces, conventionul
 lincs, conversion of pictorial view into orthogri1phic views, development of missing views.
 Unit 2. Projections of Straight lilies and Planes (6 hrs)
 Planes in different qu,ldrants, projections of lines parallel to one or both the planes, cont,lined
 by one or both the planes, perpencliculm to plune, inclined to one pbne and parallel to other.
 inclined to both the pli1nes, colHained by a plane perpendicubr to both the planes, true length
 of ;~ line and its inclinations with the reference plane, tri1nces of line. Types of pl,llles,
 perpendicular plul1t''s, oblique planes, traces of planes, projections of planes pamllel to one
 p/une, perp~ndicul,lr to both the plancs, perpendicular to one pl<lne and inclincd to another
 pli1ne.
 Unit 3. Projections of Solids (8 hrs)
Types of solid-pojyhedr<ll, solids of revolution, projections of solids, aXIs perpelldiculuf to
one plane, axis parallcl to both thc planes. axis parallel to onc pbne and perpendicular to
other pbne, axis Inclined to both the planes.
Section planes, sections, true shape of sections, sections of prisms, pyntmids, cylinders. COIle
pl,1ced In simple position.
Unit 4. Generating Drawings in AutoCAD (4 hrs)
Druwing of projection of IlI1es, planes und solds using AutoCAD, Druwing of building and
its c()ll1poncnts - tj''ont "icw, top view und scctionul views of ,1 typicnj reslclential building
through AutoCAD. PcrspL''ctivc view of a building.
Text Books/Reference:
     I.  Engineering Druwillg by P. S. Gill
     2.  Elementary Engincering Dr~wing by N. D. BJwtt
     3.  Engineering Drawing & Graphics using AutoCAD by T .Ieyapoovan
C Gursc Outcomes:
Upon SUCCL''ssful completion of the course, the stuclents will be uble to
CO I. Producc gcometric construction. 1l1ul ti -view. d imens ion ing and dct<.l il drawi ngs of
  typical 3-D engineering objects.
C02. Apply the skill for prepming detail drawing of engineering objects
C03. Understill1d alld visualizc the 3-D view of eng incering objects.
C04. Undei"stand and apply computer softwi1re to prepare engineering dr''lwing.

  23'),
  ((SELECT id FROM course WHERE code='MEIC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '24-25', 'DEPARTMENT OF MECHANICAL ENGINEERING
  MEIC101: ENGINEERING GRAPHICS*

Pre-requisite: Nil

  *Not to be treated as integrated course
  Total contact
  L  T  P  Credits
  hours
  1  0  3  3  40
Brief Description about the course:

This course develops the ability of visualization of different objects through technical drawings.
Also, useful in developing the computer drafting skill for communication of concepts, ideas in
the design of engineering products.

  Unit – I

Introduction: Overview of the course, Lines Lettering and Dimensioning: Types of lines,
Lettering, Dimensioning, Geometrical Construction of Polygons, Scales.
Orthographic Projections: Principles of Orthographic Projections – Conventions – Projections of
Points and Lines, Projections of Plane regular geometric figures. Projection and section of solids
  (10 hrs)
  Unit – II
Isometric Projections: Isometric scale. Isometric projections of simple solids and their
combinations.
Curves: Conics. Cycloid. Epicycloid. Hypocycloid. Involute. Spiral.  (10 hrs)

  Unit – III
Intersections: Interpenetration of simple solids i.e. prism with prism. Cylinder with cylinder.
Cylinder with prism, cone-with cylinder and cone with prism (axis of solids horizontal or vertical
only).  (10 hrs)
  Unit – IV
Development: Development of right and oblique prism. Cylinder. Cone and pyramids. Sectioned
solids.
Computer Aided Drafting: Practicing projections, intersections and development using drafting
software such as AUTOCAD.  (10 hrs)

Text Books / Reference
   1. Luzadder W.J., Fundamentals of Engineering Drawing – Prentice Hall India, 1993
   2. French and Vierk, Fundamentals of Engineering Drawing – McGraw Hill, 1996
   3. Narayana K.L., Kannaiah.P., Engineering Drawing – Scitech Publications, Chennai,
  2014.
   4. Venugopal K., Engineering Drawing – New Age International, 2004
   5. Natarajan K.V., A text book on Engineering Drawing – Classic prints, 2000

  24

6. Gopalakrishna K.R., Engineering Drawing – Subash Stores, 2000
   7. Bhatt N.D., Engineering Drawing – Charotar Publications, 2000
   8. Sham Tickoo, AutoCAD 2017 for Engineers & Designers, Dreamtech Press, 23 rd
  Edition, 2016.

Course Outcomes

CO 1: Sketch conics and different types of solids
CO2: Appreciate the need of Sectional views of solids and Development of surfaces of solids.
CO3: Perform conversion of orthographic projection into isometric view and vice versa
manually and by using computer aided drafting

  25'),
  ((SELECT id FROM course WHERE code='MEIC102'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '26-27', 'DEPARTMENT OF MECHANICAL ENGINEERING
  MEIC-102: ENGINEERING PRACTICE

Pre-requisite: None
  L  T  P  Credits  Total contact
  hours
  1  0  3  2  14

Brief Description about the course:

Engineering Practice is a subject in Mechanical Engineering that aims at imparting knowledge
and skill components in the field of basic workshop technology. It encompasses the
understanding of tools and materials used in various sections of workshop for making simple
components.

  UNIT- I
Introduction: Introduction to various shops/sections and workshop layouts, Safety norms.
Fitting shop: Introduction, classification of metals: ferrous and nonferrous, fitting tools:
measuring and marking tools, marking schemes for a fitting job, cutting tools: files,
specifications and uses, hacksaw, chisels, clamping tools: Vice, U-clamp, striking tools:
hammers, taps and tapping process.  (4 hrs)

  UNIT- II
Carpentry shop: Introduction, wood working: types of woods and their applications, advantage of
wood, seasoning of wood, carpentry tools: measuring tools, marking tools, cutting tools: saws,
chisels, planning tools, drilling tools, striking tools, drilling tools, Carpentry Joints, wood
working lathe.

Foundry Shop: Introduction, foundry hand tool, ladle, moulding machines, furnaces.  (6hrs)

  UNIT- III
Machining Shop: Lathe, description of lathe: headstock, tailstock, gearbox, carriage, apron,
cutting speed, feed & depth of cut, lathe operations, cutting tools, Chucks: 3 jaw, 4 jaw, magnetic
chuck.  (2hrs)

  UNIT IV
Welding Shop: Introduction, classification of welding processes, Types of welding Joint,
advantages, disadvantage and applications of welding, arc welding & gas welding equipment’s,
soldering & brazing.  (2hrs)

  26

Text Books / Reference:
1.  S K Hajra Choudhury, Nirjhar Roy, A K Hajra Choudhury, Elements of workshop
     Technology (vol. 1&2 ), media promoters.
2.  B S Raghuwanshi, A Course in Workshop Technology (manufacturing Process vol1)
     Dhanpat Rai & CO.
3.  W A J Chapman, Workshop technology in SI unit (part – 1 &2), Mc Graw Hill Education.
4.  MP GROOVER, Principles of Modern Manufacturing, Wiley.
5.  Kalpakjian, Manufacturing Process for Engineering Materials, Pearson Education India.
6.  Workshop Technology- Baker
7.  Mechanical Workshop Practice by K C John, PHI Learning
8.  Workshop Practices, H S Bawa, Tata McGraw-Hill, 2009

Course Outcomes
CO1: Comprehend the selection and use of different fitting tools.
CO2: Demonstrate the use of various carpentry and foundry tools.
CO3: Identify various lathe operations and recommend tools for machining of materials
CO4: Learn the fundamentals of arc and gas welding with appropriate safety measures

  27'),
  ((SELECT id FROM course WHERE code='CSIC100'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '79', 'Course Code  :  CSIC 100
  Course Title  :  Digital System Design
  Number of Credits  :  4
  Prerequisites  :
  Course Type  :  IC

Course Learning Objectives:
1. Awareness of intricate design details of components in any digital system.
2. Knowledge of number system and conceptual understanding of different codes.
3. Design fundamentals of computing machinery.
4. Introduction of computational automation process.
Course Content:
1. Number Systems and Coding Schemes:
   Number Systems and Codes Introduction to the positional number system, signed magnitude numbers,
   floating point numbers, binary arithmetic: addition, subtraction, multiplication and division, Base
   conversion, conversion formulas with examples, one’s and two’s compliment arithmetic, Computer codes
   – BCD codes, gray codes, excess-3 codes, parity checks, Hamming and alphanumeric codes.
2. Combinational Logic:
   Design Introduction, standard representations for logical functions, Karnaugh map representation,
   simplification of logical functions using K-map, minimization of logical functions specified in
   minterms/maxterms or Truth Table, minimization of logical functions not specified in
   minterms/maxterms, Don’t care conditions, design examples, Ex-or and Ex-nor simplification of Kmaps,
   five and six-variable K-maps, QM method, MEV method, Introduction of multiplexers and their use in
   combinational logic design, demultiplexers/decoders and their use in combinational logic design, adders
   and their use as subtractors, digital comparators, parity generators/checkers, code converters, priority
   encoders.
3. Synchronous Sequential Circuits:
   Introduction, FSM model, memory elements and their excitation functions. Synthesis of synchronous
   sequential circuits, capabilities and limitation of FSM, state equivalence and minimization, simplification
   of incompletely specified machines, registers and counters, RAM design, ROM design and programmable
   logic array.
4. Asynchronous Sequential Circuits:
   Fundamental mode and Pulse mode Circuits Analysis and Design.
Books:
1. M. Morris Mano and Michael D. Ciletti: Digital Logic Design, Sixth Edition, Pearson Education.
2. R.P. Jain: Modern Digital Electronics, Fifth Edition, TMH.
3. Z Kohavi and Niraj. K. Jha: Switching And Finite Automata Theory, Third Edition, Cambridge University
   Press.
4. Kumar A. Anand: Fundamentals of Digital Circuits, Fourth Edition, PHI.
5. James Bignell and Robert Donovan: Digital Electronics, Fifth Edition, Cengage Learning.

Course Outcomes:
1. Clarity of application of different number system and coding schemes.
2. Proficiency in design and analysis of combinational and sequential circuits.
3. Circuit level understanding of computer addressing and memory layouts.
4. Application of digital circuits for design of finite automaton.

  79'),
  ((SELECT id FROM course WHERE code='CSIC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '28', 'Course Code  :  CSIC 101
  Problems Solving and Programming Skills (for
  Course Title  :  CO, IT & AI &ML)
  Number of Credits  :  4
  Prerequisites  :
  Course Type  :  IC

Course Learning Objectives:
The objective of this course is to provide fundamentals of problem solving using C language programming.

Course Content:
1. Programming Fundamentals & Control Statements:
   Block Diagram of Computer, Hardware vs software, concept of operating system and compiler,
   Introduction to C programming, basic programming using input and output operators and expressions,
   programming using if and if-else, Programming using looping-for, while, do-while; use of switch and
   break.

2. Arrays based Programming:
   Defining and processing 1-D and 2-D Arrays for Problem Solving and Strings.

3. Modular programming using Functions:
   Structured Programming, Defining and calling a function, modular programming using functions, passing
   arguments and arrays to functions, functions of void and returning values.

4. Programming using pointers, structures and unions:
   Pointers in C: Pointer declaration, Passing Pointer to functions, pointers vs arrays, dynamic memory
   allocation. Structures and Unions, Programming Using Array of Structures and Unions, Memory
   Requirements for Unions.

Reference Books:
1. Byron S. Gottfried, Programming with C Language, Schaum Series, Tata McGraw Hill, 2015.
2. E Balaguruswamy, Programming with C, Tata McGraw Hill, 2015.
3. Kernighan & Richie, C Programming, Prentice Hall of India, 2002.

Course Outcomes:
1. Understand the use of software and programming for problem solving.
2. Learn programming using simple concepts of input, output and control statements.
3. Use arrays, functions, strings, structures and pointers for problem solving.

  28'),
  ((SELECT id FROM course WHERE code='CSIC102'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '80', 'Course Code  :  CSIC 102
  Course Title  :  Engineering Graphics (Web Design)
  Number of Credits  :  2.5
  Prerequisites  :
  Course Type  :  IC

Course Learning Objectives:
1. Introduction and brief history of World Wide Web (WWW).
2. Web essentials: HTML, XHTML, CSS.
3. Addressing web standards, client requirements and principles of web page design.
4. Introduction of Web architecture.

Course Content:
1. Introduction: Introduction to world wide web, Web Browsers, Web Servers, Hypertext Transfer Protocol,
   URLs, Domain Names, Internet Service Provider, Basic steps for Developing Website, Choosing the
   Contents, Planning and Designing Web Site, Creating a Website, Web Publishing, Hosting Site, Types of
   hosting packages, Five Golden rules of web designing.

2. Web essentials and standards: Clients, servers, introduction to Markup languages, scripting languages,
   Introduction to elements of HTML, XHTML and CSS, Introduction to Document object model (DOM),
   working with text, list, tables, frames, hyperlinks, Images, forms and controls. CSS properties, Id and
   Class, Box Model.

3. Javascript: Javascript as programming language, Data types, Values, Variables, Expressions and
   Operators. JavaScript Statements, loops, arrays, strings, methods, Defining and Invoking functions and
   their closure, random functions and maths library, representing dates, Pattern Matching and Regular
   Expressions, difference between server side and client side javascript, embedding javascript in HTML,
   hiding HTML elements, showing hidden HTML elements. DOM and event handling, error handling,
   mouse, text, and keyboard events and cookies.

4. XML: XML: Introduction – benefits of XML, well formed XML documents, XML syntax, XML
   declaration ,XML schema , XML with CSS, Document Type Definition (DTD),creating DTD –
   Types(internal DTD, external DTD),XSL.
Reference Books:
1. Thomas A Powell, HTML: The Complete Reference, Tata McGraw Hill Publications.
2. Scott Guelich, Shishir Gundavaram, Gunther Birzniek; CGI Programming with Perl 2/e,O’Reilly
3. Doug Tidwell, James Snell, Pavel Kulchenko; Programming Web Services with SOAP, O’Reilly
4. Robert. W. Sebesta, "Programming the World Wide Web", Fourth Edition, Pearson Education,2007.
5. Yong, XML Step by Step, PHI.
6. Chris Bales, “Web programming- Building Internet Application”.
7. Deitel, Deitel, Goldberg, "Internet & World Wide Web How To Program", Third Edition,Pearson
   Education, 2006.
8. Marty Hall and Larry Brown, “Core Web Programming” Second Edition, Volume I and II,Pearson
   Education, 2001.
9. Bayross Ivan, “Web Enabled Commercial Applications Development using HTML, Javascript,
   DHTML & PHP”, BPB Publication, 2005.

Course outcomes
1. Knowledge of basic principles of web site design.
2. Design proficiency of websites adhering to current web standards (HTML, XML, CSS).
3. Knowledge of various scripting languages.

  80'),
  ((SELECT id FROM course WHERE code='CSIC103'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '29', 'Course Code  :  CSIC 103
  Problems Solving and Programming Skills (for
  Course Title  :  ECE, EE, ME, PIE and CE)
  Number of Credits  :  4
  Prerequisites  :
  Course Type  :  IC

Course Learning Objectives:
The objective of this course is to provide fundamentals of problem solving using C language programming.

Course Content:
1. Programming Fundamentals & Control Statements:
   Block Diagram of Computer, Hardware vs Software, Concept of Operating System and Compiler,
   Software Development Life Cycle. Introduction to C Programming, Basic Programming using Input And
   Output Operators And Expressions, Programming using if and if-else, Programming using looping-for,
   while, do-while; use of switch and break.

2. Arrays based Programming:
   Defining and Processing 1-D and 2-D Arrays for Problem Solving.

3. Programming using Functions:
   Defining and calling a function, Programming using Functions, Passing Arguments and Arrays to
   Functions, Functions of Void and Returning Values.

4. Programming using Strings, Structures and File Handling:
   String as Array of character, Use of Null Char, Defining and Processing Structures, Passing Strings and
   Structures to Functions, Files Opening and Closing, Reading and Writing into Files Using Commands like
   fprintf, fscanf, fclose, fread, fwrite etc. Handling of formatted and unformatted Files.

Reference Books:
1. Byron S. Gottfried, Programming with C Language, Schaum Series, Tata McGraw Hill, 2015.
2. E Balaguruswamy, Programming with C, Tata McGraw Hill, 2015.
3. Kernighan & Richie, C Programming, Prentice Hall of India, 2002.

Course Outcomes:
1. Understand the use of software and programming for problem solving.
2. Learn programming using simple concepts of input, output and control statements.
3. Use arrays, functions and strings for problem solving.
4. Use of File Handling and Structures for Standard Problems.

  29'),
  ((SELECT id FROM course WHERE code='CSIC104'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '88', 'Course Code  :  CSIC 104
  Course Title  :  Programming using Python
  Number of Credits  :  4
  Prerequisites  :
  Course Type  :  IC

Course Learning Objectives:
1. Building robust applications using Python programming.
2. Building multithreaded, platform-independent and GUI based python applications for business problems.

Course Content:
1. The concept of data types:
   Variables, Assignments; Immutable Variables; Numerical Types; Arithmetic Operators And Expressions;
   comments in the program; understanding error messages; Conditions, boolean logic, logical operators;
   ranges; Control statements: if-else, loops (for, while); short-circuit (lazy) evaluation; Strings and text files;
   manipulating files and directories, os and sys modules; text files: reading/writing text and numbers from/to
   a file; creating and reading a formatted file (csv or tab-separated); String manipulations: subscript
   operator, indexing, slicing a string.

2. Lists, tuples, and dictionaries:
   Basic list operators, replacing, inserting, removing an element; searching and sorting lists; dictionary
   literals, adding and removing keys, accessing and replacing values; traversing dictionaries; Design with
   functions: hiding redundancy, complexity; arguments and return values; formal vs actual arguments,
   named arguments.

3. Simple Graphics and Image Processing:
   “turtle” module; simple 2d drawing - colors, shapes; digital images, image file formats, image processing:
   Simple image manipulations with ''image'' module (convert to bw, greyscale, blur, etc). Classes and OOP:
   classes, objects, attributes and methods; defining classes; design with classes, data modeling; persistent
   storage of objects; inheritance, polymorphism, operator overloading (_eq_, _str_, etc); abstract classes;
   exception handling, try block

4. Graphical user interfaces:
   Event-driven programming paradigm; tkinter module, creating simple GUI; buttons, labels, entry fields,
   dialogs; widget attributes - sizes, fonts, colors layouts, nested frames.

Reference Books:
1. T.R. Padmanabhan, Programming with Python, Springer, 1st Ed., 2016.
2. Kenneth Lambert, Fundamentals of Python: First Programs, Cengage Learning,, 1st Ed., 2012.

Course outcomes:
1. Programming ability for solving simple business problems.
2. Design of robust and multithreaded python applications.
3. Familiarity of simple GUI interfaces.

  88'),
  ((SELECT id FROM course WHERE code='CHIC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '30-33', '''  ..
  r

  B. Tech. pt Semester
  (2023-24 onwards)
  Course Code  : CHICIOl (Common for an branches)
  Course Title  : Energy and Environmental Science

  L  T  P  Total
  Number of credits
  2  0  1  3
  Prerequisites (Course code)  : Nil
  Course Type  IC

  Course Learning Objectives:

  •  To discuss the complexity of issues and challenges relating to energy and environmental
  science

  •  To explore the environmental impact of various energy sources and also the effects of
  different types of pollutants.

  •  To introduce the principal renewable energy systems.

  •  To discuss the human impact on the environment and human exposure to environmental
  contaminants.
  Course Content:
  L
  Unit  Course Description
  (Hrs.)

  Environment, Ecosystems and Biodiversity
  Environment: Multidisciplinary nature, scope and importance, Need for
  public awareness.
  Unit 1  Ecosystems: Concept, types, structure and functions, Producers, consumers
  6
  and decomposers, Food chains, food webs and ecological pyramids, Energy
  flow in an ecosystem.
  Biodiversity: Values of biodiversity, hot spots and threats to biodiversity,
  conservation.

  Natnral Resources
  Renewable and non-renewable resources: Natural resources and associated
  Unit 2  8
  problems.

  Forest resources: Use and over-exploitation, deforestation, case studies,
  Timber extraction, Mining, Dams and their effects on forest and tribal people.

  30

Water resources: Use and over-exploitation of surface and ground water,
  floods, droughts, conflicts over water, Dams - benefits and problems.
  Mineral resources: Use and exploitation, Environmental effects of extracting
  and using mineral resources, case studies.
  Food resources: World food problems, Changes caused by agriculture and
  overgrazing, Effects of modem agriculture, Fertilizer-pesticide problems,
  Water logging, Salinity, case studies.
  Energy resources: Present energy resources in India and its sustainability,
  Energy demand scenario in India, Growing energy needs, Renewable and non­
  renewable energy sources, Use of alternate energy sources.

  Solar energy: Basics of solar energy, solar thennal energy, photovoltaic (PV)
  solar cells, advantages and disadvantages, environmental impacts and safety.

  Wind energy: Energy fromwind turbines, India''s wind energy potential, off
  shore wind energy, environmental benefits and impacts.

  Environmental Pollution
  Air pollution: Sources and effects of pollutants, pnmary and secondary
  pollutants, controlmeasures. Acid rain: Impacts on human communities and
  agriculture. Green-house effect: Definition, causes and consequences.
  Depletion of ozone layer, destruction of ozone layer by CFC, consequences,
  effect of ozone modification, Photochemical smog, Bhopal gas tragedy.

Unit 3  Water pollution: Water characteristics, water quality (WHO standard),
  natural water pollutants their origin and effects: oxygen demanding wastes,  10
  pathogens, nutrients, salts, heavy metals, pesticides, volatile organic
  compounds. River! lake/ ground water pollution: DO, BOD, COD, pH and
  eutrophication.
  Thermal pollution: Causes, effects and control measures.
  Solid waste management: Causes, effects and control measures of urban and
  industrial wastes.
  Nuclear hazards: Causes, effects and control measures.

  Social Issues and the Environment
  From unsustainable to sustainable development: Urban problems related to
  6
Unit 4  energy, Water conservation, Rain water harvesting, Watershed management.

  31

•

  Environmental Ethics: Issues and possible solutions, consumerism and waste
  products, Acts: Environment Protection Act, Air (Prevention and Control of
  Pollution) Act, Water (Prevention and Control of Pollution) Act, Public
  awareness, Population explosion, Environment and human health, Role of
  Information Technology in environment and human health.

  Total  30

    Reference Books:
     1. A. Basak, Environmental Studies: Pearson Education; 1sl Edition, 2009.

     2. E. Bharucha, Environmental Studies for Undergraduate Courses of all Branches of Higher
  Education for University Grants Commission, 2013.
     3. D. Dave and S.S. Katewa, Text Book ofEnvironmental Studies: Cenage Learning India Private
  Limited, 2 nd Edition, 2012.

     4. S. Somvanshi and R. Dhupper, Fundamentals of Environmental Studies: S. K. Kataria
  and Sons, Reprint 2019.
    5. A. K. De, Environmental Chemistry: New Age International (P) Limited, 8th Edition, 2017.

    6. R. J. Daniels and J. Krishnaswamy, Environmental Studies: Wiley India Private Limited,
  Reprint, 2013.

    7. B. Joseph, Environmental Studies: McGraw-Hill Education (India) Private Limited, yd Edition,
  2017.

    8. A. Kaushik and C.P. Kaushik, Perspectives in Environmental Studies: New Age International
  (P) Limited, 7 th Edition, 2021.

    Course Outcomes:
    At the end of the course students will be able to:
    CO-l  Know the environmental pollutants and their health effects and environmental
  remediation and management.
    CO~2  Understand the principles of renewable energy systems and explore theenvironmental
  impact of various energy sources
    ("1)-3  Understand interrelationships among science, techn0!ogy, and environment

    CO-4  Appreciate the Importance of saving energy and environment.

  32

~.

  Energy and Environment Science Lab

 Course Learning Objectives:

    •  To learn about laboratory skills.

    •  To get a knowledge about some important laboratory techniques used in assessing the
  amount of different pollutants in water and air.

   Laboratory Experiments

    1. Determination of alkalinity in the water sample

    2. Determination of dissolved oxygen (DO) in the water sample.
    3. Determination of chemical oxygen demand (COD) in the water sample.

    4. Determination of residual chlorine in the water sample.
    5. Determination of total dissolved solids in water/effluent sample.
    6. Determination of total Ca2+ and Mg2+ hardness in water.

    7. Determination of strength of nitrite ions in water samples.

    8. Analysis of BTX through Gas-Chromatography in air samples.
    9. Analysis of heavy metal ions in industrial effluent by Atomic Absorption Spectroscopy
  (AAS).
    10. Determination of moisture and pH of soil sample.

• Reference Books

    1. O. P. Virmani and A. K. Narula, Applied Chemistry-Theory and Practice: New Age India
  Publishers, New Delhi, 2 nd Edition, 2017.
    2. S. Chawla, Essentials ofExperimental Engineering Chemistry: Dhanpat Rai Publishing
  company Ltd., New Delhi, 2006.

  33'),
  ((SELECT id FROM course WHERE code='CHIC102'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '81-84', 'B. Tech. 2nd Semester

  (2023-24 onwards)

   Course Code  :  CHICI02
   Course Title  :  Chemistry (For CE, ME and PIE)
  L  T  P  Total
   Number of credits
  2  1  1  4
  Prerequisites (Course code)  :  Nil
  Course Type  :  IC

Course Learning Objectives:

    To enable the students to acquire knowledge of the principles of chemistry involving hardness
    of water and softening of water.
    To introduce the concept of phase rule and its application in making alloys, freezing mixture,
    etc.
    To educate the students about different mechanisms of corrosion of metals and their controlling
    processes.
    To introduce the concepts and applications involving advanced engineering materials such as
    polymers, cement and high energy materials.
    To provide knowledge to the students about conventional fuels as well as sustainable fuels and
    to educate the students about the concepts involving lubricants.

Course Content:

" Unit  L
  Course Description
  (Mrs.)
  Softening of Water and Phase Rule
  Softening of Water: Boiler problems, Remedial Measures, Demineralization,
  Desalination, Advanced reverse osmosis (RO) Electro dialysis, Zeolite process,
  Ion-exchange process, MBD, Polished water.
Unit 1  Phase Rule: Description of various terms (phase, component and degrees of  8
  freedom), One component system (watei), Two component system (Pb-Ag, KI­
  H20), Technical applications: freezing mixtures, solders, safety plugs and freeze
  drying.

  81

Corrosion
  Introduction, Corrosion mechanisms: dry corrosion and wet corrosion, Types of
  corrosion: concentration corrosion, water-line corrosion, stress corrosion (caustic

Unit 2  embrittlement in boilers and seasonal cracking), pitting corrosion, Factors  5
  affecting the rate of corrosion, Remedial measures against corrosion: design,
  cathodic  protection,  modification  of environment,  Protective  coatings
  (galvanizing and tinning by hot dipping, metal cladding).
  Advanced Engineering Materials
  Polymers: Introduction and Classification, Preparation, properties and Technical
  applications of: Thermosetting polymers (Phenol-formaldehyde resins and Epoxy
  resins), Thermoplastic polymers (HOPE and LOPE), Elastomers (Natural rubbers
  and Synthetic rubbers i.e. Buna-S and Buna-N),
  Inorganic polymers (Silicones), Advantages of Inorganic polymers over Organic
  polymers.
Unit 3  10
  Conducting  Polym~rs:  Intrinsic and extrinsic polymers, Properties and
  applications of:  Conducting polymers (Polythiophene and  Polyaniline),
  Biodegradable polymers (Cellulose acetate and Polyhydroxy-Urethanes).
  Construction Material: Composition, setting and hardening of Portland cement.
  High Energy Materials (HEM): Introduction, Classification and Requirements
  of HEM, Some important explosives: RDX, OONP, TNT, PETN (Structure and
  properties) and plastic explosives.
  Fuels and Lubricants
  Fuels: Introduction, Calorific value (HCY and LCY), Determination of HCY by
  Bomb''s calorimeter, Proximate and ultimate analysis of coal, Coal liquefaction
  (Fischer-Tropsch method), Coal gasification (water gas), Sustainable fuels: Bio­
  diesel, Green-diesel, Power-alcohol and Hydrogen economy.
Unit 4  7

  Lubricants: Introduction, Classification, Significant properties and their
  determination (viscosity and viscosity index, cloud and pour point, flash and fire
  point, aniline point, acid value, saponification value, iodine value), Semi-solid
  lubricants (Greases l Solid lubricants (Graphite and MoSz).

  Total  30

  82

Reference Books:

    1. P.e. Jain and M. Jain, Engineering Chemistry: Dhanpat Rai Publishing Company, New Delhi,
  16 th Edition, 2015.
    2. G. Odian, Principles ofPolymerization: Wiley, 4 th Edition, 2004.
    3. S. Chawla, A Text Book of Engineering Chemistry: Dhanpat Rai Publishing Company, New''
  Delhi, yd Edition, 2017.
    4. S. S. Dara and S. S. Umare, A Text Book of Engineering Chemistry: S. Chand Publishing
  Company, New Delhi, 12 th Edition, 2018.
    5. R. Sivakumar and N. Sivakumar, Engineering Chemistry: Tata McGraw-Hill Publishing
  Company Limited, New Delhi, 1st Edition, 2008.
    6. O. G. Palanna, A Text Book of Engineering Chemistry: McGraw Hill, New Delhi, 4 th Reprint,
  2012.
    7. Puri, Sharma and Pathania, Principles ofPhysical chemistry: W. H. Freeman and Company, 48 th
  Edition,2021.
    8. V. R. Gowariker, N V Viswanathan, Jayadev Sreedhar, Polymer Science: New Age International
  Publishers, 4 th Edition, 2021.

    Course Outcomes:
At the end of the course students will be able to:
    CO-l  Gain the basic knowledge about hardness of water, its disadvantages and the methods
  available to soften the water.
    CO-2  Understand the concepts of phase rule and its application in making the alloys, freeze
~  drying, freezing mixture, etc.
    CO-3  Understand the mechanism of corrosion and ways to control the corrosion.

CO-4  Appreciate the concepts and applications involving advanced engineering materials such
  as polymers, cement and high energy materials.
CO-5  Understand the concepts of non-sustainable and sustainable fuels and gain the
  knowledge about the lubricants.

  83

Chemistry Lab (For CE, ME and PIE)

 Course Learning Objectives:

• To learn about laboratory skills.
• To get a knowledge about some important laboratory techniques used in quantitative assessment
  of lubricant properties.
• To learn about working of instruments in characterization of advanced materials.

Laboratory Experiments

 1.  Preparation of Phenol-formaldehyde resin.
2.  To prepare Urea formaldehyde (U-F) resin.
3.  Determination of the strength of strong acid and strong base/weak acid and strong base usmg
  conductometric titration method.
4.  Determination of viscosity oflubricants by Redwood viscometer.
5.  Determination of acid value oflubricant oil.
6.  Determination of saponification value of lubricant oil.
7.  Determination of flash and fire point of lubricant.
8.  Determination of calcium as calcium oxide volumetrically in cement extract solution.
9.  Preparation of different freezing mixtures and determination of their eutectic temperatures.
 10.  Investigatory project based on syllabus.

Reference Books

 1.  O. P. Virmani and A. K. Narula, Applied Chemistry-Theory and Practice: New Age India
  Publishers, New Delhi, 2nd Edition, 2017.
:2.  S. Chawla, Essentials ofExperimental Engineering Chemistry: Dhanpat Rai Publishing
  Company Ltd., New Delhi, 2006.
3.  S. S. Dara, A Text Book on Experiments and Calculations in Engineering Chemistry: S. Chand
  and Company Ltd., New Delhi, 9 th Edition, 2015.

  84'),
  ((SELECT id FROM course WHERE code='CHIC103'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '85-87', 'r
..

  B. Tech. 2 nd Semester
  (2023-24 onwards)

  Course Code  : CHICI03

  Course Title  Chemistry (For ECE and EE)
  L  T  P  Total
  Number of credits  :
  2  1  1  4
  Prerequisites (Course code)  Nil
  Course Type  IC

     Course Learning Objectives:
  To introduce about advanced polymers and their applications in modem science.
  To introduce the students about basic principles of battelies, fuel cell construction and their
  applications.
  To make the students learn about important aspects of conosion and its prevention.
  To impart knowledge of advanced engineering materials and their applications.

     Course Content:

  L
  Unit  Course Description
  (Rrs.)
  Polymers
  Introduction, classification, industrially important polymers: Liquid Crystal
  Polymers (LCP),Conducting polymers (CP), Interpenetrating Polymer Network
     Unit 1  8
  (IPN), Polymer Blends and Polymer Composites, Smart Polymers or Stimuli­
  responsive Polymers, Biodegradable polymers, Flame retardant and thermally
  insulating polymers ..
  Batteries
  Introduction to primary, secondary and flow batteries, Construction, working
  principle, operation and applications of Zn-AgO, Zinc-air cell, Nickel-metal
     Unit 2  9
  hydride, Lead-acid, and Lithium-ion batteries, Fuel cells: Methanol-Oxygen fuel
  cell, Solid oxide fuel cell (SOFC), Polymer electrolyte fuel cell (PEFC) and
  Molten carbonate fuel cell (MCFC).
  Corrosior
  Introduction, dry and wet conosion, electrochemical theory of corrosion, factors
  influencing conosion (nature of metal and nature of environment), types of
     Unit 3  conosion: Galvanic corrosion, stress conosion, microbial conosion, differential  6
  aeration corrosion (water line and pitting corrosion), corrosion control methods:
  protective coatings, inorganic coatings, cathodic protection (sacrificial anodic
  protection, impressed current cathodic protection), use of inhibitors.

  85

Engineering Materials
  Photovoltaic materials: Introduction, present status in India, solar energy
  utilization and conversion, solar cells and dye sensitized solar cells- principle
 Unit 4  and applications.  7
  Nanomaterials: Introduction, Synthesis of nanomaterials (bottom-up and top-
  down approach), and nano materials (fullerene, graphene, and carbon nanotubes),
  their applications.

  Total  30

Reference Books:

 1. W. D. Callister, D. G. Rethwisch, Materials Science and Engineering: An introduction: Wiley
  India Pvt. Ltd., New Delhi, 10th Edition, 2018.
 2. P.e. Jain and M. Jain, Engineering Chemistry: Dhanpat Rai Publishing Company, New Delhi,
  16 th Edition, 2015.
 3. S. Chawla, A Text Book of Engineering Chemistry: Dhanpat Rai Publishing Company, New
  Delhi, yd Edition, 2017
4. S. S. Dara and S. S. Umare, A Text Book of Engineering Chemistry: S. Chand Publishing
  Company, New Delhi, 12th Edition, 2018.
5. D. Hull and T. W. Clyne, An Introduction to Composite Materials: Cambridge University Press,
  2nd Edition, 1996, Online Edition 2012.
6. O. G. Palanna, A Text Book ofEngineering Chemistry: McGraw Hill, New Delhi, 4 th Replint,
  2012.
 7. POO, Sharma and Pathania, Principles ofPhysical chemistry: W. H. Freeman and Company, 48 th
  Edition, 2021.

Course Outcomes:
At the end of the course students will be able to:

    CO-l  Learn the significance and applications of industrially important advanced polymers.

    CO-2  Understand the basics of some important types of batteries and their working principles.

    r:0-3  Evaluate techniques to protect different metals from corrosion.
-
  Understand the chemistry involved in the synthesis and characterization of
    CO-4
  nanomaterials.

  86

(

  Chemistry Lab (For ECE and EE)

  Course Learning Objectives:
  •  To learn about laboratory skills.
  •  To get a knowledge about some important laboratory techniques used  In  quantitative
  assessment of lubricant properties.
  •  To learn about working of instruments in characterization of advanced materials.

  Laboratory Experiments

  I. Preparation of Phenol-formaldehyde resin.
  2. Determination of viscosity of lubricants by Redwood viscometer.
  1
  3. Determination of the strength (gC ) of strong acid and strong base/weak acid and strong base
  using conductometrictitration method.
  4. To prepare Urea formaldehyde (U-F) resin.
  5. To synthesize Thiokol rubber using sodium tetra sulphide with 1,2-dichloro ethane.
  6. Determination of iron in iron ore solution.
  7. Determination of calcium in cement extract solution.
  8. Potentiometric titration of an acid vs base.
  9. Investigatory project based on syllabus.

    Reference Books

  1. O. P. Virmani and A. K. Narula, Applied Chemistry-TheOlY and Practice: New Age India
    ~

  Publishers, New Delhi, 2 nd Edition, 2017.
  2. S. Chawla, Essentials ofExperimental Engineering Chemistry: Dhanpat Rai Publishing
  Company Ltd., New Delhi, 2006.
    3. S. S. Dara, A Text Book on Experiments and Calculations in Engineering Chemistry: S. Chand
  and Company Ltd., New Delhi, 9 th Edition, 2015.

  87'),
  ((SELECT id FROM course WHERE code='HSNC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '34-35', 'DEPARTMENT OF HUMANITIES AND SOCIAL SCIENCES
  Course Code  HSNC101
  Course Title  Human Values & Social Responsibility
  Number of Credits  2 (2L + 0T)
  Prerequisites  ----
  (Course Code)
  Course Category  AUDIT COURSE (AU)

Semester: Odd/Even  Internal: 50 Marks
  Total: 50 Marks

Course Objectives
     To help students understand the essential complementarily between ''VALUES'' and
  ''SKILLS'' to ensure sustained happiness & prosperity, which are core aspirations of all
  human beings.
     To facilitate the development of a Holistic perspective among students towards life
  and profession as well as towards happiness and prosperity.
     To enable the students to understand harmony and its relevance at all the levels and to
  create awareness about social responsibility among students & make them socially
  responsible citizens.
Unit-I: Human Values
Definition Features and Importance. Classification of Values: Intrinsic and Extrinsic Values,
Universal and Situational Values, Personal and Social Values, Physical, Environmental, and
Economic Values, Aesthetic, Moral and Religious Values. The Problem of Hierarchy of
Values and their Choice.
Unit-II: Ethics and Holistic Life
Human Life, its Aim and Significance: The Concept of a successful life, happy life and a
meaningful life. Harmony in Personal and Social Life: Concept of Personal, Group and
Business Ethics. Creating a Value Based Work Culture in hostel, classroom and other places
in the Campus and Society.
Unit-III: Social Responsibility
Social Responsibility: Meaning and Importance, Different Approaches of Social
Responsibility. Social Responsibility of Business towards different Stakeholders. Evolution
and Legislation of CSR in India.
Course Outcomes
At the end of the Course, students will be able to understand the concept of contemporary
ethics at different levels: Individual, Local and Global and enable them to cross examine the
ethical and social consequences of the decisions of their life-view and world view. It will also
enable them to identify personal, professional and social values and integrate them in their
personality after cross examination.

  34

Reference Books
     1. Lillie William, An Introduction of Ethics, Allied Publisher, Indian Reprint 1955.
     2. William, K Frankena, Ethics, Prentice Hall of India, 1988.
     3. Dr. Awadesh Pradhan, Mahamana ke Vichara, B.H.U. Varanasi, 2007.
     4. RR Gaur, R Sangal, G P Bagaria, Human Values and Professional Ethics, Excel
  Books, New Delhi, 2010
     5. A.N. Tripathi, Human Values, New Age Intl. Publishers, New Delhi, 2004.
     6. Fernado A.C. Business Ethics. An Indian Perspective, Pearson Education, New Delhi.
     7. Cambell Jones, Martin Parker & Rene Ten Bos, For Business Ethics, Routledge, New
  York, 2005.
     8. Philip Kotler & Nancy Lee, Corporate Social Responsibility, Wiley- India Edition,
  New Delhi.
     9. William B. Werther Jr. & David Chandler, Strategic Corporate Social Responsibility,
  Sage Publications, California.
Note: It is further proposed to do away with the attendance component of the awards in
the internal assessment. A note may be appended with each course on the following
instructions:
 (i) The faculty member is expected to explore and be acquainted with the existing Indian
  Knowledge in the domain of the course and share with the students.
 (ii) The students are expected to do the necessary study of the existing Indian Knowledge in
 the domain of the course, prepare the report, and submit the same to the concerned faculty
 member at the end of the semester.
 (iii) The faculty member will evaluate the reports and award marks to the students with
  maximum cap being the equivalent of attendance component marks

  2

  35'),
  ((SELECT id FROM course WHERE code='HSNC102'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '36', NULL),
  ((SELECT id FROM course WHERE code='HSNC103'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '37', NULL),
  ((SELECT id FROM course WHERE code='HSNC104'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '38-39', NULL),
  ((SELECT id FROM course WHERE code='HSNC105'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '40', 'DEPARTMENT OF HUMANITIES AND SOCIAL SCIENCES

  Course Code  HSNC105
  Course Title  Constitution of India
  Number of Credits  2 (2L+0T)
  Prerequisites  ----
  (Course code)
  Course Category  AUDIT COURSE (AU)
Semester: Odd/Even  Internal: 50 Marks
  Total: 50 Marks
Course Objectives
      To realise the significance of constitution of India to students from all walks of life and help
  them to understand the basic concepts of Indian constitution.
      To identify the importance of fundamental rights as well as fundamental duties.
      To understand the functioning of Union, State and Local Govts. in Indian federal system.
Unit-I: Introduction to Constitution
Meaning and Importance of the Constitution, Salient features of Indian Constitution. Preamble of the
Constitution of India. Fundamental Rights. Directive Principles of State Policy and Fundamental
Duties: their enforcement and their relevance.
Unit-II: Union Government and Judiciary
Union Executive: President, Vice-president, Prime Minister, Council of Ministers. Union Legislature:
Parliament and Parliamentary proceedings. Appointment and Transfer of Supreme Court and High
Court Judges, Powers and Functions.
Unit-III: State Governments
State Executive: Governor, Chief Minister, Council of Ministers. State Legislature: State Legislative
Assembly and State Legislative Council.
Reference/Text Books
M.V. Pylee, “Introduction to the Constitution of India”, 4th Edition, Vikas publication, 2005.
Durga Das Basu, “Introduction to the constitution of India”, (Student Edition), 19th edition, Prentice-
Hall EEE, 2008.
Merunandan, “Multiple Choice Questions on Constitution of India”, 2nd Edition, Meraga Publication.
R.C. Agarwal, (1997) “Indian Political System”, S. Chand and Company, New Delhi.
Course Outcomes
At the end of the Course, students will be able to Understand and explain the significance of Indian
Constitution as the fundamental law of the land. Exercise his fundamental rights in proper sense.
Analyse the Indian political and judiciary system.
Note: It is further proposed to do away with the attendance component of the awards in the internal
assessment. A note may be appended with each course on the following instructions:
 (i) The faculty member is expected to explore and be acquainted with the existing Indian
  Knowledge in the domain of the course and share with the students.
 (ii) The students are expected to do the necessary study of the existing Indian Knowledge in
  the domain of the course, prepare the report, and submit the same to the concerned
  faculty member at the end of the semester.
 (iii) The faculty member will evaluate the reports and award marks to the students with
  maximum cap being the equivalent of attendance component marks

  40'),
  ((SELECT id FROM course WHERE code='HSNC106'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '41', 'DEPARTMENT OF HUMANITIES AND SOCIAL SCIENCES
  Course Code  HSNC106
  Course Title  Indian Knowledge System
  Number of Credits  2 (2L)
  Prerequisites  ----
  (Course Code)
  Course Category  AUDIT COURSE (AU)
Semester: Odd/Even  Internal: 50 Marks
  Total: 50 Marks
Course Objectives
To facilitate the students with the concepts of Indian traditional knowledge and to make them
understand the importance of roots of knowledge system and to make the students understand the
traditional knowledge and analyse it and apply it to their day to day life.
UNIT-I
Introduction to traditional knowledge: Define traditional knowledge, nature and characteristics, scope
and importance, kinds of traditional knowledge, Indigenous Knowledge (IK), characteristics, the vedic
corpus, Philosophical system, wisdom through ages.
UNIT-II
Cognitive biomarkers of creativity with IKS perspectives. Positivity: Traditional approaches.
Happiness: objective and subjective measures of wellbeing, life satisfaction, positive affect, negative
affect and happiness. Resilience: Developmental and clinical perspectives. Self-regulation and self-
control, optimism, self-esteem. Spirituality and well-being. Self and Identity in modern Psychology and
Indian thought.
UNIT-III
Health and Psychology; Emotional intelligence, yoga way of life, Indian approach to Psychology.
Consciousness; levels, body-mind relationship. Indigenous perspective of Psychology: self and
motivation.
Course Outcomes
At the end of the course, students will be able to identify the concept of traditional knowledge and its
importance with the need and importance of protecting traditional knowledge. They will able to
understand, connect & explain basics of Indian traditional knowledge to modern scientific perspective.
Recommended Books
     1. Mahadevan, M., Bhat, V.R. & Pavana N. (2022). Introduction to Indian Knowledge System:
  Concepts and Applications. PHI Learning
     2. Baumgardner, SR & Crothers, MK (2009). Positive Psychology. Prentice Hall/Pearson
  Education.
     3. Cornelissen, R.M., Misra G. & Varma S. (2014). Foundations & Applications of Indian
  Psychology. Pearson Education.
Note: It is further proposed to do away with the attendance component of the awards in the internal
assessment. A note may be appended with each course on the following instructions:
 (i) The faculty member is expected to explore and be acquainted with the existing Indian
  Knowledge in the domain of the course and share with the students.
 (ii) The students are expected to do the necessary study of the existing Indian Knowledge in the domain
 of the course, prepare the report, and submit the same to the concerned faculty member at the end of
 the semester.
 (iii) The faculty member will evaluate the reports and award marks to the students with
 maximum cap being the equivalent of attendance component marks

  Page 1 of 1

  41'),
  ((SELECT id FROM course WHERE code='HSNC107'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '42', 'DEPARTMENT OF HUMANITIES AND SOCIAL SCIENCES
  Course Code  HSNC107
  Course Title  Teachings of Gita
  Number of Credits  2 (2L + 0T)
  Prerequisites  ----
  (Course Code)
  Course Category  AUDIT COURSE(AU)
Semester: Odd/Even  Internal: 50 Marks
  Total: 50 Marks
Course Objectives
      To develop a deeper understanding of the Bhagavad Gita.
      To inculcate the teachings of the Bhagavad Gita in real life in order to lead a more
  meaningful and spiritual life.
      To initiate a culture of contemplation and spirituality for maintaining a balance between
  material and spiritual needs.
Unit-I: Introduction to Bhagavad Gita
Bhagavad Gita: Meaning, Origin and History. Reading and understanding of the text,
analysis of the Bhagavad Gita with reference to the age in which it was composed and its
contemporary relevance. Ethical Teachings of Bhagavad Gita.
Unit-II: Teachings of Bhagavad Gita: Chapter 2
The focus will be on how teachings of Gita as mentioned in Chapter 2 can be applied to
overcome problems in real life like management of stress, control over mind, ethical decision
making, leadership skills and problems of justice etc. Concept of Jyanayoga, Karmayoga and
Bhaktiyoga.
Unit-III: Teachings of Bhagavad Gita: Chapter 3
The focus will be on how teachings of Gita as mentioned in Chapter 3 can be applied to
overcome problems in real life like management of stress, control over mind, ethical decision
making and leadership skills etc.
Course Outcomes
At the end of the Course, students will be able to develop an understanding of the Bhagavad Gita and
they will learn to implement the teachings of the Bhagavad Gita in real life situation.
Reference Books
     1. Sri Aurobindo, "Bhagavad Gita and Its Message" by Shri Aurobindo. Lotus Publishers, 1996.
     2. Shrimad Bhagavad Gita, Geeta Press, Gorakhpur, 1923.
     3. Juan Macaro, The Bhagavad Gita, Penguin Books, 2003.
     4. Pandit Aryamuni, Vedic Gita, 2019.
     5. Jack Hawley, The Bhagavad Gita: A Walkthrough for Westerners, New World Library, 2011.
Note: It is further proposed to do away with the attendance component of the awards in the internal
assessment. A note may be appended with each course on the following instructions:
 (i) The faculty member is expected to explore and be acquainted with the existing Indian
  Knowledge in the domain of the course and share with the students.
 (ii) The students are expected to do the necessary study of the existing Indian Knowledge in the
 domain of the course, prepare the report, and submit the same to the concerned faculty member at the
 end of the semester.
 (iii) The faculty member will evaluate the reports and award marks to the students with maximum
 cap being the equivalent of attendance component marks.

  42'),
  ((SELECT id FROM course WHERE code='HSNC108'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '43', 'DEPARTMENT OF HUMANITIES AND SOCIAL SCIENCES

     Course Code  HSNC108
     Course Title  French Language Skills
     Number of Credits  2 (2L+0T)
     Prerequisites  ----
     (Course code)
     Course Category  AUDIT COURSE (AU)
Semester: Odd/Even  Internal: 50 Marks
  Total: 50 Marks
Course Objectives
1. To introduce basic language skills in French Language.
2. To build confidence among students in speaking French Language with correct
   pronunciation.
UNIT-I: Basic Elements of Grammar
a) Determinants
b) Preposition
c) Adjective: demonstrative, interrogative and possessive.
d) Pronoun: Personal, possessive, demonstrative, interrogative
e) Present Tense, Past tense, Future tense and Imperfect tense
i) Adverb, j) Imperative and k) Comparative and superlative
UNIT-II: Translation
English to French, French to English
UNIT-III: Introduction to Culture and Civilization
Short questions on day-to-day life in France i.e. names of cities, rivers, mountains,
periodicals, authors, important abbreviations, etc.
Course Outcomes
At the end of the course, students will be able to learn and communicate effectively in French
Language on day to day basis and will also be able to manage basic communication in
French.
Reference Books
Connexions –I Didier
Connexions –II Didier
Connexions-3 by Régine Mérieux et Yves Loiseau
Note: It is further proposed to do away with the attendance component of the awards in the internal
assessment. A note may be appended with each course on the following instructions:
 (i) The faculty member is expected to explore and be acquainted with the existing Indian
  Knowledge in the domain of the course and share with the students.
 (ii) The students are expected to do the necessary study of the existing Indian Knowledge in the
 domain of the course, prepare the report, and submit the same to the concerned faculty member at the
 end of the semester.
 (iii) The faculty member will evaluate the reports and award marks to the students with
  maximum cap being the equivalent of attendance component marks

  43'),
  ((SELECT id FROM course WHERE code='HSNC109'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '44', 'DEPARTMENT OF HUMANITIES AND SOCIAL SCIENCES

     Course Code  HSNC109
     Course Title  German Language Skills
     Number of Credits  2 (2L+0T)
     Prerequisites  ----
     (Course code)
     Course Category  AUDIT COURSE (AU)
Semester: Odd/Even  Internal: 50 Marks
  Total: 50 Marks
Course Objectives
1. To introduce basic language skills in German Language.
2. To build confidence among students in speaking German Language with correct
   pronunciation.
UNIT-I: Basic Elements of Grammar
a) Wo, woher, wohin
b) Wer, was, wie.
c) Wie viel, wie viele, wie lange, Uhrzeiten..
d) Akkusativ, einen, keinen, doch usw.
e) Modalverben., f) Wenn, weil, wann, warum., g) Dativ
h) Praepositionen mit Akkusativ und Dativ wie aus, bei, durch, fuer usw.
i) Perfekt mit haben und sein.
UNIT-II: Translation
English to German, German to English
UNIT-III: Introduction to Culture and Civilization
Short questions on day-to-day life in Germany i.e. names of cities, rivers, mountains,
periodicals, authors, important abbreviations, etc.
Course Outcomes
At the end of the course, students will be able to learn and communicate effectively in German
Language on day to day basis and will also be able to manage basic communication in German.
Reference Books
Deutsch als Fremdsprache, IA (BNS 1A)
Deutsch als Fremdsprache 1B (BNS 1B)
Sprachkurs 3
Note: It is further proposed to do away with the attendance component of the awards in the internal
assessment. A note may be appended with each course on the following instructions:
 (i) The faculty member is expected to explore and be acquainted with the existing Indian
  Knowledge in the domain of the course and share with the students.
 (ii) The students are expected to do the necessary study of the existing Indian Knowledge in the
 domain of the course, prepare the report, and submit the same to the concerned faculty member at the
 end of the semester.
 (iii) The faculty member will evaluate the reports and award marks to the students with
  maximum cap being the equivalent of attendance component marks

  44'),
  ((SELECT id FROM course WHERE code='HSNC110'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '45', 'DEPARTMENT OF HUMANITIES AND SOCIAL SCIENCES

     Course Code  HSNC110
     Course Title  Japanese Language Skills
     Number of Credits  2 (2L+0T)
     Prerequisites  ----
     (Course code)
     Course Category  AUDIT COURSE (AU)
Semester: Odd/Even  Internal: 50 Marks
  Total: 50 Marks
Course Objectives
1. To introduce basic language skills in Japanese Language.
2. To build confidence among students in speaking Japanese Language with correct
   pronunciation.

UNIT-I: Basic Elements of Vocabulary and Grammar
UNIT-II: Translation
English to Japanese, Japanese to English
UNIT-III: Introduction to Culture and Civilization
Short questions on day-to-day life in Japan i.e. names of cities, rivers, mountains, periodicals,
authors, important abbreviations, etc.

Course Outcomes
At the end of the course, students will be able to learn and communicate effectively in
Japanese Language on day to day basis and will also be able to manage basic communication
in Japanese.
Reference Books
Minna no Nihongo (1-1), Goyal Publishers—Chapters 01 to 12

Note: It is further proposed to do away with the attendance component of the awards in
the internal assessment. A note may be appended with each course on the following
instructions:
 (i) The faculty member is expected to explore and be acquainted with the existing Indian
  Knowledge in the domain of the course and share with the students.
 (ii) The students are expected to do the necessary study of the existing Indian Knowledge in
  the domain of the course, prepare the report, and submit the same to the concerned
  faculty member at the end of the semester.
 (iii) The faculty member will evaluate the reports and award marks to the students with
  maximum cap being the equivalent of attendance component marks

  45'),
  ((SELECT id FROM course WHERE code='HSNC111'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '46', 'DEPARTMENT OF HUMANITIES AND SOCIAL SCIENCES

  Course Code  HSNC111
  Course Title  Thought Lab and Practices
  Number of Credits  2 (2L)
  Prerequisites  ----
  (Course Code)
  Course Category  AUDIT COURSE (AU)
Semester: Odd/Even  Internal: 50 Marks
  Total: 50 Marks
Course Objectives: This introductory course input is intended
a. To introduce importance of mind power, meditation, positive thoughts etc.
b. To have insights and experience of mind power, meditation, positive thoughts etc.
c. To preserve and disseminate mind power, meditation, positive thoughts etc for further
   research and societal applications.
Unit I Thoughts
What are thoughts, Source of thoughts, Types of thoughts, Effect of thoughts on emotional and
physical health, Understanding interrelationship between thoughts and actions, Tree of
consciousness, Exercises
Unit II Meditation
Introduction to Meditation, Knowing the self, Understanding and connecting to the supreme,
Benefits of meditation, achieving The Eight Powers using meditation, Exercises.
Unit III Mind and Body management
Stress Management, Sleep management, nourishing various body organs using innate qualities
of the self, exploring 7 energy centers of the body, Body Mind Detoxification, Exercises.
Unit IV The Law of Attraction
Positive affirmations, the art of Visualization, Karma Philosophy. Happiness. Exercises.
Unit V Applications
Exploring various instruments to identify the mind and body health status using Karada Scan,
Muse, VR headset etc., Case Study on power of thoughts – Water experiment by Masaru
Emoto, SWOC analysis of the self, Exercises.
Course Outcomes: By successfully completing this course, the learner will be able to:
    a. Will be able to learn the importance of mind power, meditation, positive thoughts etc.
    b. Gain proficiency in interdisciplinary aspects of mind power, meditation, positive thoughts etc.
    c. Will be able to learn mind power, meditation, positive thoughts etc for further research and
  societal applications.
Reference Books
     1. BK Shivani, “Happiness Unlimited”.
     2. Jagdish Chandra Hasija, “Yog ki vidhi aur sidhi”.
     3. Dr Girish Patel, “Positive Health”.
Note: It is further proposed to do away with the attendance component of the awards in the internal
assessment. A note may be appended with each course on the following instructions:
 (i) The faculty member is expected to explore and be acquainted with the existing Indian
  Knowledge in the domain of the course and share with the students.
 (ii) The students are expected to do the necessary study of the existing Indian Knowledge in the domain
 of the course, prepare the report, and submit the same to the concerned faculty member at the end of
 the semester.
 (iii) The faculty member will evaluate the reports and award marks to the students with
  maximum cap being the equivalent of attendance component marks
  46'),
  ((SELECT id FROM course WHERE code='SWNC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '47-60', NULL),
  ((SELECT id FROM course WHERE code='SWNC102'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '61-66', NULL),
  ((SELECT id FROM course WHERE code='CSPC100'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '91', 'Program Specific Course
  Course Code  :  CSPC 100/ITPC 100
  Course Title  :  Data Structures
  Number of Credits  :  4
  Prerequisites  :  Problems Solving and Programming Skills
  Course Type  :  PC

Course Learning Objectives
1. This course introduces the concept of Data Structures used in various computer science applications
2. The students are introduced to understand and efficiently apply various data structures such as stacks,
   queues, linked lists, trees and graphs for solving various computing problems using C programming
   language.

Course Content
1. Pointers & File Handling:
   Revision of Pointers and Dynamic Memory, Files and related operations.
   Searching techniques: Linear and Binary, Sorting techniques: Selection, Bubble, Insertion, Merge sort,
   Quicksort.

2. Simple Data Structures
   Arrays based Linear Data Structures: Array storage, sparse arrays; Transpose, addition, and multiplication
   of sparse matrices, Stacks and Queues and their applications, multiple stacks and queues in an array.

3. Linked Data Structures
   Singly, Doubly & Circular Linked Lists; representation, operations and applications, linked stacks and
   queues. linked lists based polynomial addition.

4. Advanced Data Structures
   Trees, Basic concepts and definitions of a tree and binary tree and associated terminology, Binary tree
   traversal techniques, some more operations on binary trees, Heaps and heapsort.

Reference Books:
1. E Horowitz and S. Sahni: Fundamentals of Data Structures in C, Second Edition, Universities Press,
   Hyderabad.
2. R.L. Kruse: Data Structures & Program Design in C, PHI.
3. D.F. Knuth: The art of Computer Programming Vol-1, Narosa Publications, 1985.
4. Byron S. Gottfried & J K Chhabra: Theory and Problems of Programming with C Language, Schaum’s
   Outlines Series, TMH, 2005.

Course Outcomes
1. Develop skill to identify and determine the usage of various data structures, operations, associated
   algorithms and implement their applications.
2. Apply knowledge of pointers, memory allocation and string handling for solving programming problems.
3. Understand the concept of trees and graphs, their implementation and applications.
4. Able to implement standard algorithms for searching and sorting.
5. Analyze efficiency of different algorithms using time and space complexity.

  91'),
  ((SELECT id FROM course WHERE code='ITPC100'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '91', 'Program Specific Course
  Course Code  :  CSPC 100/ITPC 100
  Course Title  :  Data Structures
  Number of Credits  :  4
  Prerequisites  :  Problems Solving and Programming Skills
  Course Type  :  PC

Course Learning Objectives
1. This course introduces the concept of Data Structures used in various computer science applications
2. The students are introduced to understand and efficiently apply various data structures such as stacks,
   queues, linked lists, trees and graphs for solving various computing problems using C programming
   language.

Course Content
1. Pointers & File Handling:
   Revision of Pointers and Dynamic Memory, Files and related operations.
   Searching techniques: Linear and Binary, Sorting techniques: Selection, Bubble, Insertion, Merge sort,
   Quicksort.

2. Simple Data Structures
   Arrays based Linear Data Structures: Array storage, sparse arrays; Transpose, addition, and multiplication
   of sparse matrices, Stacks and Queues and their applications, multiple stacks and queues in an array.

3. Linked Data Structures
   Singly, Doubly & Circular Linked Lists; representation, operations and applications, linked stacks and
   queues. linked lists based polynomial addition.

4. Advanced Data Structures
   Trees, Basic concepts and definitions of a tree and binary tree and associated terminology, Binary tree
   traversal techniques, some more operations on binary trees, Heaps and heapsort.

Reference Books:
1. E Horowitz and S. Sahni: Fundamentals of Data Structures in C, Second Edition, Universities Press,
   Hyderabad.
2. R.L. Kruse: Data Structures & Program Design in C, PHI.
3. D.F. Knuth: The art of Computer Programming Vol-1, Narosa Publications, 1985.
4. Byron S. Gottfried & J K Chhabra: Theory and Problems of Programming with C Language, Schaum’s
   Outlines Series, TMH, 2005.

Course Outcomes
1. Develop skill to identify and determine the usage of various data structures, operations, associated
   algorithms and implement their applications.
2. Apply knowledge of pointers, memory allocation and string handling for solving programming problems.
3. Understand the concept of trees and graphs, their implementation and applications.
4. Able to implement standard algorithms for searching and sorting.
5. Analyze efficiency of different algorithms using time and space complexity.

  91'),
  ((SELECT id FROM course WHERE code='AIPC100'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '100', 'B.Tech. (AI & ML)
  Program Specific Course
  Course Code  :  AIPC 100
  Course Title  :  Data Structures
  Number of Credits  :  4
  Prerequisites  :  Problems Solving and Programming Skills
  Course Type  :  PC

Course Learning Objectives
1. This course introduces the concept of Data Structures used in various computer science applications
2. The students are introduced to understand and efficiently apply various data structures such as
   stacks, queues, linked lists, trees and graphs for solving various computing problems using C
   programming language.

Course Content
1. Pointers & File Handling:
   Revision of Pointers and Dynamic Memory, Files and related operations.
   Searching techniques: Linear and Binary, Sorting techniques: Selection, Bubble, Insertion, Merge
   sort, Quicksort.

2. Simple Data Structures
   Arrays based Linear Data Structures: Array storage, sparse arrays; Transpose, addition, and
   multiplication of sparse matrices, Stacks and Queues and their applications, multiple stacks and
   queues in an array.

3. Linked Data Structures
   Singly, Doubly & Circular Linked Lists; representation, operations and applications, linked stacks
   and queues. linked lists based polynomial addition.

4. Advanced Data Structures
   Trees, Basic concepts and definitions of a tree and binary tree and associated terminology, Binary
   tree traversal techniques, some more operations on binary trees, Heaps and heapsort.

Reference Books:
1. E Horowitz and S. Sahni: Fundamentals of Data Structures in C, Second Edition, Universities Press,
   Hyderabad.
2. R.L. Kruse: Data Structures & Program Design in C, PHI.
3. D.F. Knuth: The art of Computer Programming Vol-1, Narosa Publications, 1985.
4. Byron S. Gottfried & J K Chhabra: Theory and Problems of Programming with C Language,
   Schaum’s Outlines Series, TMH, 2005.

Course Outcomes
1. Develop skill to identify and determine the usage of various data structures, operations, associated
   algorithms and implement their applications.
2. Apply knowledge of pointers, memory allocation and string handling for solving programming
   problems.
3. Understand the concept of trees and graphs, their implementation and applications.
4. Able to implement standard algorithms for searching and sorting.
5. Analyze efficiency of different algorithms using time and space complexity.

  100'),
  ((SELECT id FROM course WHERE code='CEPC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '89-90', 'CEPC101 Engineering Mechanics

Pre-requisite: Applied Physics

  Total contact
  L T P/D Credits
  hours
  3  0  2  4  5

Brief description of the course: The course is a problem-focused engineering class that helps civil
engineering students develop the ability to understand and analyze static forces on a variety of structures
and engineering applications. The course begins with fundamental concepts and principles to explain
the importance of mechanics in the context of engineering and conservation equations. It introduces the
techniques for analyzing the forces in the bodies, plane trusses and frames.
To understand the fundamental principles of stresses, strain and the relationship. To understand the
estimation of various loads and load distributions on beams. To evaluate the principal stresses & Strains
and use of Mohr’s Circle. To learn the concepts in analysis and design of columns.

Course Content:
Theory Content:
Unit-I Basic Concepts (8 hrs)
Concept of Rigid body and deformable bodies, Free body diagrams, Types of beams, simple and
continuous beams, type of supports and reactions.
Fundamentals of Determinate and Indeterminate structures, Analysis of plane trusses, Analysis of Plane
frames.
Unit-II Stresses and Strains (8 hrs)
Concept of stress and strain (linear, lateral, shear and volumetric), Hooke’s law, elastic constants and
their relationship, stress-strain diagrams for brittle, elastic and plastic materials, generalized Hooke’s
law.
Analysis of axially loaded members: Stresses, strains and deformations of the structures under
concentrated loads, self-weight and temperature changes.
Unit-III Shear Force and Bending Moment Diagram (7 hrs)
Concept of shear force diagram (SFD) and bending moment diagram (BMD) for different beams under
various types of loading. Stresses due transverse loading on beams (bending and shear stresses), concept
of shear stresses due to twisting moment (Torsion).
Unit-IV Principal Stresses and Strains (7 hrs)
Principal stresses and strains: concept of principal planes and principal stresses, normal and shear
stresses on an oblique plane, magnitude and orientation of principal stresses and maximum shear stress.
Theories of failure: maximum normal stress, maximum shear stress and maximum strain theory.
Unit-V Axially and Eccentrically Loaded Columns (6 hrs)
Axially loaded columns: concept of critical load and buckling load, Euler’s formula for buckling load
for various end conditions of columns, concept of equivalent length, Rankine’s formula, safe load on
column and limitations of Euler’s formula

Laboratory Content:
   1. Stress-strain relationship for brittle and ductile materials (Concrete Cube and Steel Bars).
   2. Shear test on Concrete.
   3. Compression test on timber/mortar Cube
   4. Bending test on concrete beam/timber/plywood.
   5. Compressive strength test on bricks
   6. Flexural strength of flooring/roofing tiles.
   7. Experimental and analytical study of behaviour of struts with various end conditions.
   8. To determine elastic properties of a beam.
   9. Experimental and analytical study of an elastically coupled beam.

  89

10. Sway in portal frames - demonstration.

Note: The focus of concluding lectures should be to emphasize the value addition of the subject and also
on how it impacts the environment. Further, the faculty may suggest possible sustainable
solutions/emerging technologies/innovations towards sustainability in the subject domain.

Text Books/Reference:
   1. Merian, J. L., Kraige, L.G. Engineering Mechanics - Statics, 5th Edition, Wiley Publishers.
   2. Beer & Johnston, Mechanics for Engineers, 4th Edition, McGraw-Hill.
   3. Timoshenko, S.P., Young, D.H., Rao, J.V. Engineering Machines,4th Edition, McGraw-Hill.
   4. Singer, F.L. Strength of Materials, Third Edition, Harper and Row Publishers.
   5. Hearn, E.J., Mechanics of Materials, Pergaman Press.
   6. Beer and Johnston E. R. Mechanics of Materials, 3rd Edition, Tata McGraw Hill.
   7. R. K. Bansal, “Strength of Materials”, Laxmi Publications
   8. S. Ramamurtham, “Strength of material”, Dhanpat Rai Publication
   9. S.S. Rattan, “Strength of Material”, Tata McGraw-Hill Publication Co. Ltd.
   10. B.K. Sarkar, “Strength of Material”, McGraw-Hill.
   11. Singer and Pytel, “Strength of materials”, Harper and Row Publication.
   12. R. C. Hibbeler, “Mechanics of Materials”, Prentice Hall Publication.

Course Outcomes:
Upon successful completion of the course, the students will be able to
CO1. Define static indeterminacy and kinematic indeterminacy of structures, apply methods of
     analysis and be able to analyse trusses.
CO2. Understand the stress strain behaviour of brittle and ductile materials, State of Stress and also
     able to define the relationship between various elastic constants.
CO3. Draw Shear force and bending moment diagram and also able to plot through thickness variation
     of bending stresses and shear stress.
CO4. Apply the concept of principal stresses and theories of failure to determine stresses on a 2-D
     element.
CO5. Analyse the behaviour of columns under uniaxial loading.

  90'),
  ((SELECT id FROM course WHERE code='EEPC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '92-93', 'B.Tech. (Electrical Engineering)
Program Core: PC

Course Code  EEPC101
Course Title  Electric Circuit Theory
Number of Credits  4-0-0=4
Prerequisites (Course Code)  ---
Course category  PC

COURSE OBJECTIVES:

OBJ1: To understand behaviour of Electric Circuit elements
OBJ2: To understand concept of poles, zeros, frequency response, and Laplace
     transforms of electrical networks
OBJ3: To understand standard signals, sources and its transformation, and apply
     network theorems to solve electrical circuits
OBJ4: To understand and analyse magnetically coupled circuits and their electrical
     circuit equivalence, Analyses of DC/AC circuits transient behaviour, and
     resonance in the circuits
OBJ5: To analyse and determine multi-port networks, their characteristics, parameters,
  and characteristic impedances

Course Content

UNIT-I Mathematical Preliminaries
Introduction to linear time invariant differential equations, free and forced solutions for
simple electrical networks, Study of Laplace transform, its various properties and
inverse Laplace transform, Introduction to the concept of network poles and zeros,
frequency response. Introduction to graph theory.

UNIT-II Network Graphs and Network Theorems
Classification of circuits, sources and signals, standard signals, source transformations,
Network topology, graph matrices, network ports, formulation and solution of circuit
equations based on graph theory, using different analysis techniques- circuit, cut set and
mixed. Concept of duality, Network theorems and their applications- Superposition,
reciprocity, Thevenin, Norton, Maximum power transfer, Millman, Substitution,
Compensation and Tellegen’s theorem.

UNIT-III Network Analysis and Behaviour
Introduction to non-linear circuits and their analysis. Analysis of circuits with
dependent sources, Time constants and Transient response under DC and AC
excitations. Analysis of magnetically coupled circuits, Series and parallel resonance
circuits, bandwidth and Q-factor, response with variation in parameters and frequency.

UNIT-IV Multi Port Network Representation and Analysis
Two-port networks, characteristics and parameters, interrelationships of parameters,
image & iterative impedance, concept of characteristic impedance, scattering

  92

parameters, insertion loss, interconnection of 2-port networks, analysis of terminated
2-port networks, extensions to multiport networks.

Test Books:

   1. W. H. Hayt, J. E. Kemmerley, J. D. Phillips and S. M. Durbin, “Engineering Circuit
  Analysis”, 9th Edition, McGraw Hill, New Delhi.
   2. M. E. Van Valkenburg and T. S. Rathore, “Network Analysis”, Revised 3rd Edition,
  PHI, New Delhi, 2019.

Reference Books:

   3. Franklin. F, Kuo, “Network Analysis and Synthesis”, 2nd Edition, Wiley India Ltd.,
  New Delhi, 2006
   4. K. S. Suresh Kumar, “Electric Circuits and Networks”, Pearson Learning, New
  Delhi, 2008.
   5. Charles K. Alexander and Matthew N.O. Sadiku “Fundamentals of Electric
  Circuits”, Textbook,
   6. M Nahvi, Joseph Edminister, K Rao, “Electric Circuits, Schaum''s Outline Series”,
  1 July 2017

COURSE OUTCOMES:

 CO1. Analyse behaviour of linear circuits by using Laplace transform and Fourier
  transform
 CO2. Represent and analyse an electric network by using graph theory and Analyse an
  electric circuit considering multiport network concept and understanding the
  basics of network theorems and applying the same for analysing the circuit
  behaviour
 CO3. Understand and apply electricity and magnetism concepts to magnetically
  coupled circuits, Analysis of series and parallel resonant circuits
 CO4. Represent and analyse characteristics and parameters of multiport networks and
  concept of characteristic impedance

  93'),
  ((SELECT id FROM course WHERE code='ECPC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '94-95', 'ELECTRONICS & COMMUNICATION ENGINEERING DEPARTMENT
  ECPC-101 CIRCUIT THEORY
  (B.Tech. ECE & IIOT)
Pre-requisite: Mathematics (MAIR-11)
  L  T  P  Credits  Total contact
  hours
  3  0  2  4
Brief Description about the course:
The aim of this course is to make student competent in analyzing electrical circuits, apply
Kirchhoff’s current and voltage laws to circuits in order to determine voltage, current and power
in branches of any circuits excited by DC voltages and current sources.
Course Content
UNIT I
BASIC CIRCUITS & NETWORK THEOREMS
Ohm’s Law – Kirchoffs laws – DC and AC Circuits – Resistors in series and parallel circuits –
Mesh current and node voltage method of analysis for D.C and A.C. circuits – Initial conditions.
Network reduction: voltage and current division, source transformation – star delta conversion.
Theorems: Thevenin’s and Norton’s, Superposition, Maximum power transfer, Substitution, and
Reciprocity Theorems.

UNIT II
RL, RC and RLC CIRCUITS & RESONANCE
Series and parallel resonance – their frequency response – Quality factor and Bandwidth – Self
and mutual inductance – Coefficient of coupling – Tuned circuits – Single tuned circuits –
Transient response of RL, RC and RLC Circuits using Laplace transform for DC input and A.C.
with sinusoidal input – Bandwidth and High Q circuits.

UNIT III
S – DOMAIN ANALYSIS OF CIRCUITS
Complex Frequency – Definition of the Laplace Transform – Laplace Transforms of Simple Time
Functions – Inverse Transform Techniques – Basic Theorems for the Laplace Transform – The
Initial – Value and Final –Value Theorems – Z(s) & Y(s) – Nodal and Mesh Analysis in s–Domain
– Additional Circuit Analysis Techniques – Poles, Zeros, and Transfer Functions – Convolution
Transfer Function.

UNIT IV
TWO–PORT NETWORKS
ONE–Port Networks – Admittance Parameters – Some Equivalent Networks – Impedance
Parameters – Hybrid Parameters – Transmission Parameters.

  94

REFERENCE BOOKS:

1. William H. Hayt Jr, Jack E. Kemmerly and Steven M. Durbin, “Engineering Circuits Analysis”,
Tata McGraw Hill publishers, 6 th edition, New Delhi, 2003.

2. Joseph A. Edminister, Mahmood Nahri, “Electric circuits”, Schaum’s series, Tata McGrawHill,
New Delhi, 2001. 4th ED

3. M.E. Van Valkenburg, Ahmed Rumel, “Network Analysis”, Prentice-Hall of India Pvt.Ltd.; 3rd
edition

Course outcomes:

On completion of this course, you should be able to:

CO 1. Apply KCL and KVL in electrical circuits to calculate currents, voltages and powers in
typical linear electric circuits
CO 2. Apply circuit theorems and reduce more complicated circuits into the Thevenin’s and
Norton’s equivalent circuits.
CO 3. Analyze AC and DC Circuits.
CO 4. Describe circuit elements in phasor domain and perform steady-state analysis using phasors.
CO 5. Analyze resonance circuits and to develop transfer functions.
CO 6. To understand Two–Port networks and its parameters.

  95'),
  ((SELECT id FROM course WHERE code='MEPC103'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '96-97', 'MECHANICAL ENGINEERING DEPARTMENT
  MEPC- 103: THERMODYNAMICS

Pre-requisite: Nil
  Total
  L  T  P  Credits  contact
  hours
  3  1  0  4  4

Brief Description about the course

Thermodynamics, as a fundamental branch of physics, plays a crucial role in the field of
Mechanical Engineering. While an engineer''s education encompasses various areas of study,
thermodynamics stands out by highlighting some of nature''s fundamental physical laws: The
First, Second, Third, and even the Zeroth Laws of Thermodynamics. For a mechanical engineer,
achieving its comprehensive education involves grasping the essence of these basic laws, which
is essential for true intellectual development. Moreover, for engineers, it becomes imperative to
not only comprehend the essence but also apply these laws effectively in practical engineering
scenarios.

  UNIT I

Concepts of Thermodynamics: Definition, Classical and statistical thermodynamics,
Macroscopic and microscopic approaches, thermodynamic system, state, boundary, surroundings
and universe, thermodynamic properties, thermodynamic equilibrium, Quasi-static process,
zeroth law of thermodynamics, work and heat transfer.  (4hrs)

The First Law of Thermodynamics: First law for a closed system; Application of the First Law to
non-flow processes viz constant volume, constant pressure, constant internal energy processes;
Reversible adiabatic and reversible polytropic processes; Steady Flow Energy Equation and its
application to water, steam and gas turbines, pumps, compressors boilers, condensers, nozzles
etc; Transient flow processes; PMM-I, Enthalpy.  (6hrs)

  UNIT II

Properties of Fluids: Properties of liquids and vapours; P-V, P-T, T-S and H-S diagrams for a
pure substance (water), Tables of properties, Expansion of steam, hyperbolic , Isentropic and
throttling processes; determination of dryness fraction, Properties of a perfect gas; Equation of
state; Property relation for internal energy, enthalpy & heat capacities of an ideal gas, P-V-T
surface, Triple point , Real gases, properties of real gases, Vander Waals equation , Reduced
equation of state, Generalized compressibility charts, Virial equation. Properties of ideal gas
mixtures.  (12hrs)

  96

UNIT III

The Second Law of Thermodynamics: Limitations of the First Law, Heat source & sink, Heat
engine, Refrigerator & Heat Pump, The Second Law, Kelvin Planck and Clausius statements;
Reversible & Irreversible processes; the Carnot theorem, Absolute temperature scale, Inequality
of Clausius, characteristics of Entropy, Entropy change for open &closed systems, Third Law of
Thermodynamics, Validity & limitations of the Laws of Thermodynamics.  (10hrs)

  UNIT IV
General Thermodynamic Relations: Maxwell Relations, specific heat relations, energy equations;
relations between internal energy and entropy, Joule Thomson Coefficient, Clausius Clapeyron’s
equation, Application of thermodynamic relations. Availability and the Gibbs function,
Availability of a closed system, Availability of steady flow system, The Gibbs function and the
steady flow system.  (8hrs)

Text Books/References
1.  Rogers, GFC & Mayhew, Y.R, Engg. Thermodynamics, ELBS
2.  Nag, P.K., Engg. Thermodynamics, TMH
3.  Achuthan, M., Engg. Thermodynamics,TMH.
4.  Cengel and Boles,Thermodynamics: An Engineering Approach, McGraw Hill, 8th edition,
     2015.

Course Outcomes:

CO1: understand the basic concepts of thermodynamics such as heat, work, state etc.
CO2: identify the properties of substances on property diagrams and obtain the data from
property tables.
CO3: apply First Law of Thermodynamics to open and closed systems
CO4: apply the Second Law of Thermodynamics and the concept of entropy to analyse the
thermal efficiencies of heat engines.

  97'),
  ((SELECT id FROM course WHERE code='PIPC101'), '2023', 2023, 'B.Tech. 1st year Scheme & Syllabi, 2023 batch onwards, all programmes (PDF)', '98-99', 'MECHANICAL ENGINEERING DEPARTMENT
  PIPC 101: MANUFACTURING PROCESSES

Pre-requisite: NIL
  Total
  L  T  P  Credits  contact
  hours
  4  0  0  4  52

Brief description about the course
It explores to an extensive view of manufacturing process techniques in different manufacturing
environment and value addition of finished good products. The various manufacturing techniques such
as Casting, semi-finished to finished products through machining operations, Forming, sheet metal
operations and value enable welding techniques. It helps to understand the fundamental concepts and
principles of different manufacturing process techniques and cost-effective selection decisions in
different production environment requirements.

  UNIT-I
Introduction to manufacturing, classification of manufacturing, fundamental properties of Engineering
materials including metals and alloys, polymers, ceramics and composites, plastic processing
techniques: compression molding and injection molding, thermoforming molding, molding cycle time.

  (10 hrs)
  UNIT-II
Casting: Pattern materials, types of allowances, type of patterns, type of mould, desirable properties of
molding materials, core, core print, type of cores, CO2 casting, expandable and permanent mould
casting, sand casting, shell casting, plaster casting, investment casting, die casting, centrifugal castings,
casting defects & remedies advantages, disadvantages and application of casting.
Machining: definition, classification, Lathe: parts and accessories, specifications, various operations on
lathe.
  (16 hrs)

  UNIT-III
Forming: deformation of metals, elastic and plastic deformation, metal working processes: cold and hot
working, forging, rolling, extrusion, wire and tube drawing.
Sheet metal processes and operations: Introduction to shearing, blanking and punching, notching,
trimming, lancing, nibbling, bending, stretching, embossing and coining, Sheet metal forming, Sheet
metal cutting, Slitting Process.
  (12 hrs)

  UNIT-IV
Welding: definition and classification, thermite welding, electric arc welding: MMAW, SAW, TIG,
MIG, gas welding, resistance welding, brazing and soldering, welding defects and remedies, factor
affecting in sustainability in welding process.

  98

(14 hrs)
NOTE:
The focus of concluding lectures should be to emphasize the value addition of the subject and also on how it
impacts the environment. Further, the faculty may suggest possible sustainable solutions/emerging
technologies/innovations towards sustainability in the subject domain.

Reference Books:
1. P N Rao, Manufacturing Technology (Vol. 1 & 2), McGraw Hill Education.
2. M P Groover, Principles of Modern Manufacturing, Wiley.
3. Kalpakjian, Manufacturing Processes for Engineering Materials, Pearson Education India.
4. Amitabha Ghosh & A K Mallik, Manufacturing Science, Affiliated East-West Press Pvt. Ltd.

Course Outcomes:
CO1: To understand the fundamental concepts of Manufacturing process techniques in different
production environment.
CO2: To learn the various manufacturing defects and remedies in production environments
CO3: To understand the cost-effective and value enable manufacturing techniques selection in different
industrial environments.
CO4: To understand the fundamental & sustainable welding techniques in different manufacturing
environments.

  99');
