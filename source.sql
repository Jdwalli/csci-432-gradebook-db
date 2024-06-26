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

-- Commands for inserting values into STUDENTS (first, last, major, student_id)

INSERT INTO `STUDENTS` VALUES('Joshua', 'Wallington', 'Computer Science', 13845);
INSERT INTO `STUDENTS` VALUES('Courtney', 'Young', 'Computer Science', 67890);
INSERT INTO `STUDENTS` VALUES('Sydney', 'Stokes', 'Computer Science', 23456);

-- Commands for inserting values into COURSES (course_id, department, course_number, course_name, semester, year)

INSERT INTO `COURSES` VALUES (14150, 'Computer Science', 'CSCI 301', 'Database Systems', 'Fall', 2024);
INSERT INTO `COURSES` VALUES (17550, 'Mathematics', 'MATH 210', 'Linear Algebra', 'Spring', 2024);
INSERT INTO `COURSES` VALUES (14216, 'Computer Science', 'CSCI 302', 'Structure of Programming Languages', 'Spring', 2024);

-- Commands for inserting values into REGISTRATIONS (student_id, course_id)

INSERT INTO `REGISTRATIONS` VALUES(13845, 14150); -- Register Joshua Wallington (13845) for CSCI 301 (14150)
INSERT INTO `REGISTRATIONS` VALUES(13845, 17550); -- Register Joshua Wallington (13845) for MATH 201 (17550)
INSERT INTO `REGISTRATIONS` VALUES(13845, 14216); -- Register Joshua Wallington (13845) for CSCI 302 (14216)

INSERT INTO `REGISTRATIONS` VALUES(67890, 14150); -- Register Courtney Young (67890) for CSCI 301 (14150)
INSERT INTO `REGISTRATIONS` VALUES(67890, 17550); -- Register Courtney Young (67890) for MATH 201 (17550)
INSERT INTO `REGISTRATIONS` VALUES(67890, 14216); -- Register Courtney Young (67890) for CSCI 302 (14216)

INSERT INTO `REGISTRATIONS` VALUES(23456, 14150); -- Register Sydney Stokes (23456) for CSCI 301 (14150)
INSERT INTO `REGISTRATIONS` VALUES(23456, 17550); -- Register Sydney Stokes (23456) for MATH 201 (17550)
INSERT INTO `REGISTRATIONS` VALUES(23456, 14216); -- Register Sydney Stokes (23456) for CSCI 302 (14216)

-- Commands for inserting values into ASSIGNMENTS (assignment_id, course_id, allocation_id, instance, points_possible)

    -- Database Systems Class 

    INSERT INTO `ASSIGNMENTS` VALUES(6, 14150, 1, 1, 50); -- Participation / Attendance grade worth 50 points
    INSERT INTO `ASSIGNMENTS` VALUES(1, 14150, 2, 1, 70); -- Homework 1 worth 70 points 
    INSERT INTO `ASSIGNMENTS` VALUES(2, 14150, 2, 2, 85); -- Homework 2 worth 85 points
    INSERT INTO `ASSIGNMENTS` VALUES(3, 14150, 2, 3, 92); -- Homework 3 worth 92 points
    INSERT INTO `ASSIGNMENTS` VALUES(4, 14150, 3, 1, 150); -- Midterm exam worth 150 points
    INSERT INTO `ASSIGNMENTS` VALUES(5, 14150, 4, 1, 200); -- Final exam worth 200 points

    -- Linear Algebra Class

    INSERT INTO `ASSIGNMENTS` VALUES(16, 17550, 5, 1, 100); -- Participation / Attendance worth 100 points
    INSERT INTO `ASSIGNMENTS` VALUES(7, 17550, 6, 1, 32); -- Quiz 1 worth 32 points 
    INSERT INTO `ASSIGNMENTS` VALUES(8, 17550, 6, 2, 21); -- Quiz 2 worth 21 points
    INSERT INTO `ASSIGNMENTS` VALUES(9, 17550, 6, 3, 10); -- Quiz 3 worth 10 points
    INSERT INTO `ASSIGNMENTS` VALUES(10, 17550, 6, 4, 27); -- Quiz 4 worth 27 points
    INSERT INTO `ASSIGNMENTS` VALUES(11, 17550, 6, 5, 28); -- Quiz 5 worth 25 points
    INSERT INTO `ASSIGNMENTS` VALUES(12, 17550, 7, 1, 100); -- Exam 1 worth 100 points
    INSERT INTO `ASSIGNMENTS` VALUES(13, 17550, 7, 2, 100); -- Exam 2 worth 100 points
    INSERT INTO `ASSIGNMENTS` VALUES(14, 17550, 7, 3, 100); -- Exam 3 worth 100 points
    INSERT INTO `ASSIGNMENTS` VALUES(15, 17550, 8, 1, 300); -- Final Exam worth 300 points

    -- Structure of Programming Languages Class

    INSERT INTO `ASSIGNMENTS` VALUES(17, 14216, 9, 1, 100); -- Participation / Attendance worth 100 points
    INSERT INTO `ASSIGNMENTS` VALUES(18, 14216, 10, 1, 100); -- Midterm 100 points
    INSERT INTO `ASSIGNMENTS` VALUES(19, 14216, 11, 1, 100); -- Final worth 100 points


-- Commands for inserting values into ALLOCATIONS

INSERT INTO `ALLOCATIONS` VALUES(1, 14150, 'Attendance', 10); --Database Systems Class
INSERT INTO `ALLOCATIONS` VALUES(2, 14150, 'Homework', 20); --Database Systems Class
INSERT INTO `ALLOCATIONS` VALUES(3, 14150, 'Midterm', 30); --Database Systems Class
INSERT INTO `ALLOCATIONS` VALUES(4, 14150, 'Final Exam', 40); --Database Systems Class

INSERT INTO `ALLOCATIONS` VALUES(5, 17550, 'Attendance', 4); -- Linear Algebra Class
INSERT INTO `ALLOCATIONS` VALUES(6, 17550, 'Quizzes', 25); -- Linear Algebra Class
INSERT INTO `ALLOCATIONS` VALUES(7, 17550, 'Exam', 30); -- Linear Algebra Class
INSERT INTO `ALLOCATIONS` VALUES(8, 17550, 'Final Exam', 40); -- Linear Algebra Class

INSERT INTO `ALLOCATIONS` VALUES(9, 17550, 'Attendance', 30); --  Structure of Programming Languages Class
INSERT INTO `ALLOCATIONS` VALUES(10, 17550, 'Midterm', 30); --  Structure of Programming Languages Class
INSERT INTO `ALLOCATIONS` VALUES(11, 17550, 'Final Exam', 40); --  Structure of Programming Languages Class

-- Commands for inserting values into STUDENTGRADES (student_id, assignment_id, points)

-- Joshua Wallington Grades

    -- Database Systems
    INSERT INTO `STUDENTGRADES` VALUES(13845, 1, 70); -- Homework 1 worth 70 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 2, 85); -- Homework 2 worth 85 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 3, 89); -- Homework 3 worth 92 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 4, 138); -- Midterm exam worth 150 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 5, 200); -- Final exam worth 200 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 6, 30);  -- Participation / Attendance grade worth 50 points

    -- Linear Algebra 
    INSERT INTO `STUDENTGRADES` VALUES(13845, 7, 30); -- Quiz 1 worth 32 points 
    INSERT INTO `STUDENTGRADES` VALUES(13845, 8, 17); -- Quiz 2 worth 21 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 9, 8); -- Quiz 3 worth 10 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 10, 27); -- Quiz 4 worth 27 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 11, 35); -- Quiz 5 worth 25 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 12, 67); -- Exam 1 worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 13, 92); -- Exam 2 worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 14, 77); -- Exam 3 worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 15, 272); -- Final Exam worth 300 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 16, 79); -- Participation / Attendance worth 100 points

    -- Structure of Programming Language
    INSERT INTO `STUDENTGRADES` VALUES(13845, 17, 100); -- Participation / Attendance worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 18, 86); -- Midterm 100 points
    INSERT INTO `STUDENTGRADES` VALUES(13845, 19, 100);-- Final worth 100 points


-- Courtney Young Grades

    -- Database Systems
    INSERT INTO `STUDENTGRADES` VALUES(67890, 1, 67); -- Homework 1 worth 70 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 2, 84); -- Homework 2 worth 85 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 3, 92); -- Homework 3 worth 92 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 4, 110); -- Midterm exam worth 150 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 5, 187); -- Final exam worth 200 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 6, 50);  -- Participation / Attendance grade worth 50 points

    -- Linear Algebra 
    INSERT INTO `STUDENTGRADES` VALUES(67890, 7, 32); -- Quiz 1 worth 32 points 
    INSERT INTO `STUDENTGRADES` VALUES(67890, 8, 12); -- Quiz 2 worth 21 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 9, 4); -- Quiz 3 worth 10 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 10, 27); -- Quiz 4 worth 27 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 11, 35); -- Quiz 5 worth 25 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 12, 87); -- Exam 1 worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 13, 92); -- Exam 2 worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 14, 99); -- Exam 3 worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 15, 298); -- Final Exam worth 300 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 16, 46); -- Participation / Attendance worth 100 points

    -- Structure of Programming Language
    INSERT INTO `STUDENTGRADES` VALUES(67890, 17, 87); -- Participation / Attendance worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 18, 93); -- Midterm 100 points
    INSERT INTO `STUDENTGRADES` VALUES(67890, 19, 76);-- Final worth 100 points


-- Sydney Stokes Grades

    -- Database Systems
    INSERT INTO `STUDENTGRADES` VALUES(23456, 1, 40); -- Homework 1 worth 70 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 2, 65); -- Homework 2 worth 85 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 3, 92); -- Homework 3 worth 92 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 4, 150); -- Midterm exam worth 150 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 5, 178); -- Final exam worth 200 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 6, 50);  -- Participation / Attendance grade worth 50 points

    -- Linear Algebra 
    INSERT INTO `STUDENTGRADES` VALUES(23456, 7, 32); -- Quiz 1 worth 32 points 
    INSERT INTO `STUDENTGRADES` VALUES(23456, 8, 21); -- Quiz 2 worth 21 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 9, 10); -- Quiz 3 worth 10 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 10, 22); -- Quiz 4 worth 27 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 11, 20); -- Quiz 5 worth 25 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 12, 100); -- Exam 1 worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 13, 63); -- Exam 2 worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 14, 100); -- Exam 3 worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 15, 272); -- Final Exam worth 300 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 16, 100); -- Participation / Attendance worth 100 points

    -- Structure of Programming Language
    INSERT INTO `STUDENTGRADES` VALUES(23456, 17, 85); -- Participation / Attendance worth 100 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 18, 92); -- Midterm 100 points
    INSERT INTO `STUDENTGRADES` VALUES(23456, 19, 100);-- Final worth 100 points


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
    -- Add an extra homework 

    INSERT INTO ASSIGNMENTS (course_id, allocation_id, instance, points_possible)
        VALUES (17550, 100, 1, 10);

-- Change the percentages of the categories for a course
    -- Set Linear Algebra Class Attendance percentage to 5 instead of 4

    UPDATE ALLOCATIONS
    SET percentage = 5
    WHERE course_id = 17550 AND category_name = 'Attendance'; 

-- Add 2 points to the score of each student on an assignment
    -- Add 2 points to linear algebra final exam

    UPDATE STUDENTGRADES
    SET points = points + 2
    WHERE assignment_id = 17550;

-- Add 2 points just to those students whose last name contains a 'Q'.

    UPDATE STUDENTGRADES
    SET points = points + 2
    WHERE assignment_id = 17550
    AND student_id IN (SELECT student_id FROM STUDENTS WHERE last_name LIKE '%Q%');

-- Compute the grade for a student (Includes letter grade and percentage based on the weights)

WITH WeightedGrades AS (
    SELECT S.first_name,  S.last_name, S.student_id, C.course_name, A.category_name,
        AVG(SG.points * 1.0 / AG.points_possible) AS points_percentage, 
        A.percentage AS grade_weight
    FROM STUDENTGRADES SG
    JOIN ASSIGNMENTS AG ON SG.assignment_id = AG.assignment_id
    JOIN ALLOCATIONS A ON AG.allocation_id = A.allocation_id
    JOIN COURSES C ON AG.course_id = C.course_id
    JOIN STUDENTS S ON SG.student_id = S.student_id
    GROUP BY S.student_id, C.course_name, A.category_name
)
SELECT 
    first_name, last_name, student_id, course_name,
    ROUND((SUM(grade_weight * points_percentage) / SUM(grade_weight)) * 100, 2) AS grade_percentage,
    CASE
        WHEN ROUND((SUM(grade_weight * points_percentage) / SUM(grade_weight)) * 100, 2) >= 90 THEN 'A'
        WHEN ROUND((SUM(grade_weight * points_percentage) / SUM(grade_weight)) * 100, 2) >= 80 THEN 'B'
        WHEN ROUND((SUM(grade_weight * points_percentage) / SUM(grade_weight)) * 100, 2) >= 70 THEN 'C'
        WHEN ROUND((SUM(grade_weight * points_percentage) / SUM(grade_weight)) * 100, 2) >= 60 THEN 'D'
        ELSE 'F'
    END AS letter_grade
FROM WeightedGrades
GROUP BY first_name, last_name, student_id, course_name;

-- Compute the grade for a student, where the lowest score for a given category is dropped. (Drop lowest in linear algebra)

WITH WeightedGrades AS (
    SELECT S.first_name, S.last_name, S.student_id, C.course_name, A.category_name,
        AVG(SG.points * 1.0 / AG.points_possible) AS points_percentage, 
        A.percentage AS grade_weight,
        ROW_NUMBER() OVER(PARTITION BY S.student_id, C.course_name, A.category_name ORDER BY SG.points ASC) AS rank
    FROM STUDENTGRADES SG
    JOIN ASSIGNMENTS AG ON SG.assignment_id = AG.assignment_id
    JOIN ALLOCATIONS A ON AG.allocation_id = A.allocation_id
    JOIN COURSES C ON AG.course_id = C.course_id
    JOIN STUDENTS S ON SG.student_id = S.student_id
    GROUP BY S.student_id, C.course_name, A.category_name, SG.assignment_id
)
, FilteredGrades AS (
    SELECT * FROM WeightedGrades WHERE rank > 1
)
SELECT 
    first_name, last_name, student_id, course_name,
    ROUND((SUM(grade_weight * points_percentage) / SUM(grade_weight)) * 100, 2) AS grade_percentage,
    CASE
        WHEN ROUND((SUM(grade_weight * points_percentage) / SUM(grade_weight)) * 100, 2) >= 90 THEN 'A'
        WHEN ROUND((SUM(grade_weight * points_percentage) / SUM(grade_weight)) * 100, 2) >= 80 THEN 'B'
        WHEN ROUND((SUM(grade_weight * points_percentage) / SUM(grade_weight)) * 100, 2) >= 70 THEN 'C'
        WHEN ROUND((SUM(grade_weight * points_percentage) / SUM(grade_weight)) * 100, 2) >= 60 THEN 'D'
        ELSE 'F'
    END AS letter_grade
FROM FilteredGrades
WHERE category_name = 'Quizzes'
GROUP BY first_name, last_name, student_id, course_name;


-- Testing for adding 2 points to the score of each student on an assignment:
    -- Show Table
        SELECT * FROM 'STUDENTGRADES' WHERE assignment_id = 2;
    -- Update
        UPDATE STUDENTGRADES
        SET points = points + 2
        WHERE assignment_id = 2; 
    -- Show after update
        SELECT * FROM 'STUDENTGRADES' WHERE assignment_id = 2;

