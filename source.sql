-- Commands for creating tables
-- Engine: SQLite

DROP TABLE IF EXISTS "STUDENTS";

CREATE TABLE "STUDENTS" (
    "first_name" varchar(255) DEFAULT NULL,
    "last_name" varchar(255) DEFAULT NULL,
    "major" varchar(255) DEFAULT NULL,
    "student_id" INTEGER PRIMARY KEY AUTOINCREMENT
);

DROP TABLE IF EXISTS "COURSES";

CREATE TABLE "COURSES" (
    "course_id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "department" varchar(255) DEFAULT NULL,
    "course_number" varchar(255) DEFAULT NULL,
    "course_name" varchar(255) DEFAULT NULL,
    "semester" varchar(255) DEFAULT NULL,
    "year" varchar(255) DEFAULT NULL
);

DROP TABLE IF EXISTS "REGISTRATIONS";

CREATE TABLE "REGISTRATIONS" (
    "student_id" INTEGER,
    "course_id" INTEGER,
    PRIMARY KEY ("student_id", "course_id"),
    FOREIGN KEY ("student_id") REFERENCES "STUDENTS"("student_id"),
    FOREIGN KEY ("course_id") REFERENCES "COURSES"("course_id")
);

DROP TABLE IF EXISTS "ASSIGNMENTS";

CREATE TABLE "ASSIGNMENTS" (
    "assignment_id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "course_id" INTEGER NOT NULL,
    "allocation_id" INTEGER NOT NULL,
    "instance" INTEGER NOT NULL,
    "points_possible" INTEGER DEFAULT 0 NOT NULL,
    FOREIGN KEY ("course_id") REFERENCES "COURSES"("course_id"),
    FOREIGN KEY ("allocation_id") REFERENCES "ALLOCATION"("allocation_id")
);

DROP TABLE IF EXISTS "STUDENTGRADES";

CREATE TABLE "STUDENTGRADES" (
    "student_id" INTEGER NOT NULL,
    "assignment_id" INTEGER NOT NULL,
    "points" INTEGER DEFAULT 0 NOT NULL,
    PRIMARY KEY ("student_id", "assignment_id"),
    FOREIGN KEY ("student_id") REFERENCES "STUDENTS"("student_id"),
    FOREIGN KEY ("assignment_id") REFERENCES "ASSIGNMENTS"("assignment_id")
);

DROP TABLE IF EXISTS "ALLOCATIONS";

CREATE TABLE "ALLOCATIONS" (
    "allocation_id" INTEGER PRIMARY KEY,
    "course_id" INTEGER NOT NULL,
    "category_name" VARCHAR(30) NOT NULL,
    "percentage" INTEGER NOT NULL,
    FOREIGN KEY ("course_id") REFERENCES "COURSES"("course_id")
);

-- Commands for inserting values into STUDENTS
INSERT INTO `STUDENTS` VALUES('Joshua', 'Wallington', 'Computer Science', 13845);
INSERT INTO `STUDENTS` VALUES('Courtney', 'Young', 'Computer Science', 67890);
INSERT INTO `STUDENTS` VALUES('Sydney', 'Stokes', 'Computer Science', 23456);

-- Commands for inserting values into COURSES
INSERT INTO `COURSES` VALUES(76294, "Academic Success", 'HUBIS 001-01', 'Ways of the Bison', "Fall", 2025);
INSERT INTO `COURSES` VALUES(14374, "English", 'ENGL 005-01', 'Technical Writing', "Spring", 2024);
INSERT INTO `COURSES` VALUES(12312, "Aviation", 'AVA 001-01', 'Flight Mechanics', "Fall", 2024);
INSERT INTO `COURSES` VALUES(12012, "Aviation", 'AVA 300-02', 'Flight Training', "Spring", 2025);
INSERT INTO `COURSES` VALUES (14150, 'Computer Science', 'CSCI 301', 'Database Systems', 'Fall', 2024);
INSERT INTO `COURSES` VALUES (17550, 'Mathematics', 'MATH 210', 'Linear Algebra', 'Fall', 2023);
INSERT INTO `COURSES` VALUES (14216, 'Computer Science', 'CSCI 302', 'Structure of Programming Languages', 'Spring', 2024);
INSERT INTO `COURSES` VALUES (12017, 'Chemistry', 'CHEM 301', 'Organic Chemistry', 'Spring', 2024);
INSERT INTO `COURSES` VALUES (98293, 'Music', 'MUS 101', 'Music in Our Lives', 'Fall', 2022);
INSERT INTO `COURSES` VALUES (17170, 'General Studies', 'GS 101', 'Freshman Seminar', 'Fall', 2022);
INSERT INTO `COURSES` VALUES (14567, 'Philosophy', 'PHIL 201', 'Ethics', 'Spring', 2024);


-- Commands for inserting values into REGISTRATIONS
INSERT INTO `REGISTRATIONS` VALUES(13845, 76294);
INSERT INTO `REGISTRATIONS` VALUES(13845, 14150);
INSERT INTO `REGISTRATIONS` VALUES(13845, 14216);

INSERT INTO `REGISTRATIONS` VALUES(67890, 76294);
INSERT INTO `REGISTRATIONS` VALUES(67890, 14150);
INSERT INTO `REGISTRATIONS` VALUES(67890, 14216);

INSERT INTO `REGISTRATIONS` VALUES(23456, 76294);
INSERT INTO `REGISTRATIONS` VALUES(23456, 14150);
INSERT INTO `REGISTRATIONS` VALUES(23456, 14216);

-- Commands for inserting values into ASSIGNMENTS
INSERT INTO `ASSIGNMENTS` VALUES(11836, 76294, 1, 1, 100);
INSERT INTO `ASSIGNMENTS` VALUES(11837, 76294, 1, 1, 100);
INSERT INTO `ASSIGNMENTS` VALUES(11838, 76294, 1, 1, 100);

INSERT INTO `ASSIGNMENTS` VALUES(99822, 14150, 1, 1, 100);
INSERT INTO `ASSIGNMENTS` VALUES(99823, 14150, 1, 1, 100);
INSERT INTO `ASSIGNMENTS` VALUES(99824, 14150, 1, 1, 100);

INSERT INTO `ASSIGNMENTS` VALUES(76382, 14216, 1, 1, 100);
INSERT INTO `ASSIGNMENTS` VALUES(76383, 14216, 1, 1, 100);
INSERT INTO `ASSIGNMENTS` VALUES(76384, 14216, 1, 1, 100);

-- Commands for inserting values into STUDENTGRADES
INSERT INTO `STUDENTGRADES` VALUES(13845, 11836, 98);
INSERT INTO `STUDENTGRADES` VALUES(13845, 11837, 89);
INSERT INTO `STUDENTGRADES` VALUES(13845, 99823, 91);
INSERT INTO `STUDENTGRADES` VALUES(13845, 76382, 110);
INSERT INTO `STUDENTGRADES` VALUES(13845, 76383, 87);

INSERT INTO `STUDENTGRADES` VALUES(67890, 11836, 98);
INSERT INTO `STUDENTGRADES` VALUES(67890, 11837, 88);
INSERT INTO `STUDENTGRADES` VALUES(67890, 99823, 92);
INSERT INTO `STUDENTGRADES` VALUES(67890, 76382, 100);
INSERT INTO `STUDENTGRADES` VALUES(67890, 76383, 87);

INSERT INTO `STUDENTGRADES` VALUES(23456, 11836, 98);
INSERT INTO `STUDENTGRADES` VALUES(23456, 11837, 92);
INSERT INTO `STUDENTGRADES` VALUES(23456, 99823, 93);
INSERT INTO `STUDENTGRADES` VALUES(23456, 76382, 99);
INSERT INTO `STUDENTGRADES` VALUES(23456, 76383, 92);


-- -- Commands for inserting values into ALLOCATIONS
INSERT INTO `ALLOCATIONS` VALUES(1, 76294, 'Participation', 10);
INSERT INTO `ALLOCATIONS` VALUES(2, 76294, 'Homework', 20);
INSERT INTO `ALLOCATIONS` VALUES(3, 76294, 'Tests', 50);
INSERT INTO `ALLOCATIONS` VALUES(4, 76294, 'Projects', 20);

INSERT INTO `ALLOCATIONS` VALUES(5, 14150, 'Participation', 15);
INSERT INTO `ALLOCATIONS` VALUES(6, 14150, 'Homework', 25);
INSERT INTO `ALLOCATIONS` VALUES(7, 14150, 'Tests', 40);
INSERT INTO `ALLOCATIONS` VALUES(8, 14150, 'Projects', 20);

INSERT INTO `ALLOCATIONS` VALUES(9, 14216, 'Participation', 10);
INSERT INTO `ALLOCATIONS` VALUES(10, 14216, 'Homework', 30);
INSERT INTO `ALLOCATIONS` VALUES(11, 14216, 'Tests', 45);
INSERT INTO `ALLOCATIONS` VALUES(12, 14216, 'Projects', 15);

-- Compute the average/highest/lowest score of an assignment

-- AVERAGE
    SELECT assignment_id, AVG(points) AS avg_score FROM STUDENTGRADES GROUP BY assignment_id;

-- HIGHEST
    SELECT assignment_id, MAX(points) AS highest_score FROM STUDENTGRADES GROUP BY assignment_id;

-- LOWEST
    SELECT assignment_id, MIN(points) AS lowest_score FROM STUDENTGRADES GROUP BY assignment_id;

-- List all of the students in a given course
SELECT S.first_name, S.last_name 
FROM STUDENTS S 
JOIN REGISTRATIONS R 
ON S.student_id = R.student_id 
JOIN COURSES C 
ON R.course_id = C.course_id 
WHERE C.course_name = 'Database Systems';

-- List all of the students in a course and all of their scores on every assignment
SELECT S.first_name, S.last_name, AG.assignment_id, SG.points
FROM STUDENTS S
JOIN REGISTRATIONS R ON S.student_id = R.student_id
JOIN COURSES C ON R.course_id = C.course_id
JOIN ASSIGNMENTS AG ON C.course_id = AG.course_id
LEFT JOIN STUDENTGRADES SG ON S.student_id = SG.student_id AND AG.assignment_id = SG.assignment_id
WHERE C.course_name = 'Database Systems';

-- Add an assignment to a course
-- Change the percentages of the categories for a course
-- Add 2 points to the score of each student on an assignment
-- Add 2 points just to those students whose last name contains a 'Q'.
-- Compute the grade for a student
-- Compute the grade for a student, where the lowest score for a given category is dropped.