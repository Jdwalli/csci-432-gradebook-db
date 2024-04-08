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


DROP TABLE IF EXISTS "STUDENTGRADES";
DROP TABLE IF EXISTS "ASSIGNMENTS";
DROP TABLE IF EXISTS "ALLOCATIONS";


-- Commands for inserting values into STUDENTS
INSERT INTO `STUDENTS` VALUES('Joshua', 'Wallington', 'Biology', 13845);
INSERT INTO `STUDENTS` VALUES('Courtney', 'Young', 'Computer Science', 67890);
INSERT INTO `STUDENTS` VALUES('Sydney', 'Stokes', 'Computer Engineering', 23456);
INSERT INTO `STUDENTS` VALUES('Denzel', 'Washington', 'Acting', 83845);
INSERT INTO `STUDENTS` VALUES('Viola', 'Davis', 'Law', 53937);
INSERT INTO `STUDENTS` VALUES('Morgan', 'Freeman', 'English', 42493);
INSERT INTO `STUDENTS` VALUES('Angela', 'Basset', 'Aviation', 98213);
INSERT INTO `STUDENTS` VALUES('Regina', 'King', 'Mechanical Engineering', 13887);
INSERT INTO `STUDENTS` VALUES('Kerry', 'Washington', 'Voice', 14156);
INSERT INTO `STUDENTS` VALUES('Taraji', 'Henson', 'History', 78877);
INSERT INTO `STUDENTS` VALUES('Will', 'Smith', 'Agriculture', 96674);
INSERT INTO `STUDENTS` VALUES('Giancarlo', 'Esposito', 'Chemistry', 12102);

-- Commands for inserting values into REGISTRATIONS

INSERT INTO `REGISTRATIONS` VALUES(13845, 76293);
INSERT INTO `REGISTRATIONS` VALUES(67890, 76293);
INSERT INTO `REGISTRATIONS` VALUES(23456, 76293);
INSERT INTO `REGISTRATIONS` VALUES(83845, 76293);
INSERT INTO `REGISTRATIONS` VALUES(53937, 76293);
INSERT INTO `REGISTRATIONS` VALUES(42493, 76294);
INSERT INTO `REGISTRATIONS` VALUES(98213, 76293);
INSERT INTO `REGISTRATIONS` VALUES(13887, 76294);
INSERT INTO `REGISTRATIONS` VALUES(14156, 76294);
INSERT INTO `REGISTRATIONS` VALUES(78877, 76294);
INSERT INTO `REGISTRATIONS` VALUES(96674, 76293);
INSERT INTO `REGISTRATIONS` VALUES(12102, 76294);



-- Commands for inserting values into COURSES
INSERT INTO `COURSES` VALUES(76293, "Academic Success", 'HUBIS 001-03', 'Ways of the Bison', "Spring", 2024);
INSERT INTO `COURSES` VALUES(76294, "Academic Success", 'HUBIS 001-01', 'Ways of the Bison', "Fall", 2025);
INSERT INTO `COURSES` VALUES(14374, "English", 'ENGL 005-01', 'Technical Writing', "Spring", 2024);
INSERT INTO `COURSES` VALUES(14394, "English", 'ENGL 005-07', 'Technical Writing', "Fall", 2025);
INSERT INTO `COURSES` VALUES(14274, "English", 'ENGL 005-23', 'Technical Writing', "Spring", 2025);
INSERT INTO `COURSES` VALUES(14149, "English", 'ENGL 001-01', 'Elementary Writing', "Spring", 2024);
INSERT INTO `COURSES` VALUES(10020, "English", 'ENGL 017-07', 'Medical Writing', "Fall", 2025);
INSERT INTO `COURSES` VALUES(15673, "English", 'ENGL 012-23', 'English Theory', "Spring", 2025);
INSERT INTO `COURSES` VALUES(12312, "Aviation", 'AVA 001-01', 'Flight Mechanics', "Fall", 2024);
INSERT INTO `COURSES` VALUES(12012, "Aviation", 'AVA 300-02', 'Flight Training', "Spring", 2025);
INSERT INTO `COURSES` VALUES (14150, 'Computer Science', 'CSCI 301', 'Database Systems', 'Fall', 2024);
INSERT INTO `COURSES` VALUES (16253, 'Chemistry', 'CHEM 201', 'General Chemistry', 'Spring', 2025);
INSERT INTO `COURSES` VALUES (17550, 'Mathematics', 'MATH 210', 'Linear Algebra', 'Fall', 2023);
INSERT INTO `COURSES` VALUES (14216, 'Computer Science', 'CSCI 302', 'Structure of Programming Languages', 'Spring', 2024);
INSERT INTO `COURSES` VALUES (16485, 'Law', 'LAW 101', 'Introduction to Law', 'Fall', 2023);
INSERT INTO `COURSES` VALUES (12017, 'Chemistry', 'CHEM 301', 'Organic Chemistry', 'Spring', 2024);
INSERT INTO `COURSES` VALUES (98293, 'Music', 'MUS 101', 'Music in Our Lives', 'Fall', 2022);
INSERT INTO `COURSES` VALUES (17170, 'General Studies', 'GS 101', 'Freshman Seminar', 'Fall', 2022);
INSERT INTO `COURSES` VALUES (18293, 'History', 'HIST 201', 'African American History', 'Spring', 2023);
INSERT INTO `COURSES` VALUES (19123, 'Psychology', 'PSYCH 101', 'Introduction to Psychology', 'Fall', 2023);
INSERT INTO `COURSES` VALUES (15234, 'Physics', 'PHYS 201', 'Classical Mechanics', 'Spring', 2024);
INSERT INTO `COURSES` VALUES (13567, 'Economics', 'ECON 301', 'Microeconomics', 'Fall', 2022);
INSERT INTO `COURSES` VALUES (11234, 'Political Science', 'POLSCI 201', 'American Government', 'Spring', 2023);
INSERT INTO `COURSES` VALUES (19345, 'Sociology', 'SOC 101', 'Introduction to Sociology', 'Fall', 2022);
INSERT INTO `COURSES` VALUES (12567, 'English', 'ENG 102', 'Writing Composition', 'Spring', 2025);
INSERT INTO `COURSES` VALUES (17456, 'Biology', 'BIOL 202', 'Genetics', 'Fall', 2024);
INSERT INTO `COURSES` VALUES (19876, 'Mathematics', 'MATH 302', 'Calculus III', 'Spring', 2023);
INSERT INTO `COURSES` VALUES (16543, 'Art', 'ART 101', 'Introduction to Art History', 'Fall', 2023);
INSERT INTO `COURSES` VALUES (14567, 'Philosophy', 'PHIL 201', 'Ethics', 'Spring', 2024);



-- Commands for inserting values into STUDENTGRADES
-- Commands for inserting values into ASSIGNMENTS
-- Commands for inserting values into ALLOCATIONS
