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

-- Commands for inserting values into STUDENTS
INSERT INTO `STUDENTS` VALUES('Joshua', 'Wallington', 'Biology', 13845);
INSERT INTO `STUDENTS` VALUES('Courtney', 'Young', 'Computer Science', 67890);
INSERT INTO `STUDENTS` VALUES('Sydney', 'Stokes', 'Computer Engineering', 23456);

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
INSERT INTO `REGISTRATIONS` VALUES(13845, 76293);
INSERT INTO `REGISTRATIONS` VALUES(13845, 10020);
INSERT INTO `REGISTRATIONS` VALUES(13845, 17550);

INSERT INTO `REGISTRATIONS` VALUES(67890, 76294);
INSERT INTO `REGISTRATIONS` VALUES(67890, 14374);
INSERT INTO `REGISTRATIONS` VALUES(67890, 16485);

INSERT INTO `REGISTRATIONS` VALUES(23456, 76293);
INSERT INTO `REGISTRATIONS` VALUES(23456, 14274);
INSERT INTO `REGISTRATIONS` VALUES(23456, 14150);

-- Commands for inserting values into ASSIGNMENTS

-- Commands for inserting values into STUDENTGRADES

-- Commands for inserting values into ALLOCATIONS
