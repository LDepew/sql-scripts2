CREATE TABLE student (
	student_ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided'
    );


DESCRIBE student;

DROP TABLE student;

ALTER TABLE student ADD gpa DECIMAL(3, 2);

ALTER TABLE student DROP COLUMN gpa;

INSERT INTO student(name, major) VALUES('Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student(student_ID, name) VALUES(3, 'Claire');
INSERT INTO student VALUES(3, NULL, 'Chemistry');
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

UPDATE student
SET name = 'Tom', major = 'undecided'
WHERE student_ID = 1;

DELETE FROM student
WHERE name = 'Tom' AND major = 'undecided';



SELECT * from student;