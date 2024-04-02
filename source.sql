-- Commands for creating tables

DROP TABLE IF EXISTS "STUDENT";
CREATE TABLE "STUDENT" (
    "first_name" varchar(255) DEFAULT NULL,
    "last_name" varchar(255) DEFAULT NULL,
    "major" varchar(255) DEFAULT NULL,
    "student_id" int(11) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY ("student_id")
);


-- Commands for inserting values
