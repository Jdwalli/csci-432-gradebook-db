-- Commands for creating tables

DROP TABLE IF EXISTS "STUDENT";
CREATE TABLE "STUDENT" (
    "first_name" varchar(255) DEFAULT NULL,
    "last_name" varchar(255) DEFAULT NULL,
    "major" varchar(255) DEFAULT NULL,
    "student_id" int(9) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY ("student_id")
);




-- Commands for inserting values into STUDENTS
INSERT INTO `STUDENT` VALUES('Joshua', 'Wallington', 'Biology', 12345);
INSERT INTO `STUDENT` VALUES('Courtney', 'Young', 'Computer Science', 67890);
INSERT INTO `STUDENT` VALUES('Sydney', 'Stokes', 'Computer Engineering', 23456);
INSERT INTO `STUDENT` VALUES('Denzel', 'Washington', 'Acting', 83845);
INSERT INTO `STUDENT` VALUES('Viola', 'Davis', 'Law', 53937);
INSERT INTO `STUDENT` VALUES('Morgan', 'Freeman', 'English', 42493);
INSERT INTO `STUDENT` VALUES('Angela', 'Basset', 'Aviation', 98213);
INSERT INTO `STUDENT` VALUES('Regina', 'King', 'Mechanical Engineering', 13887);
INSERT INTO `STUDENT` VALUES('Kerry', 'Washington', 'Voice', 14156);
INSERT INTO `STUDENT` VALUES('Taraji', 'Henson', 'History', 78877);
INSERT INTO `STUDENT` VALUES('Will', 'Smith', 'Agriculture', 96674);
INSERT INTO `STUDENT` VALUES('Giancarlo', 'Esposito', 'Chemistry', 12102);


  


