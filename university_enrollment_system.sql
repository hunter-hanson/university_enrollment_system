CREATE DATABASE university_enrollment_system;
USE university_enrollment_system;

CREATE TABLE student (
	student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_first VARCHAR(50),
    student_last VARCHAR(50),
    student_email VARCHAR(100),
    student_enrollment_date DATE
);

CREATE TABLE professor (
	professor_id INT AUTO_INCREMENT PRIMARY KEY,
    prof_first VARCHAR(50),
    prof_last VARCHAR(50),
    prof_email VARCHAR(100),
    prof_department VARCHAR(50)
);

CREATE TABLE course (
	course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    credits TINYINT,
    professor_id INT,
    prerequisite_course_id INT,
    FOREIGN KEY (professor_id) REFERENCES professor(professor_id),
	FOREIGN KEY (prerequisite_course_id) REFERENCES course(course_id)
);

CREATE TABLE enrollments (
	enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    grade_value DECIMAL(3,2),
    FOREIGN KEY (student_id) REFERENCES student(student_id),
    FOREIGN KEY (course_id) REFERENCES course(course_id)
);

INSERT INTO student (student_first, student_last, student_email, student_enrollment_date) VALUES
('Alice', 'Johnson', 'alice.johnson@edu.com', '2025-01-15'),
('Bob', 'Smith', 'bob.smith@edu.com', '2025-01-16'),
('Charlie', 'Brown', 'charlie.brown@edu.com', '2025-01-17');

INSERT INTO professor (prof_first, prof_last, prof_email, prof_department) VALUES
('John', 'Doe', 'john.doe@edu.com', 'Math'),
('Jane', 'Smith', 'jane.smith@edu.com', 'Physics'),
('Emily', 'Davis', 'emily.davis@edu.com', 'Computer Science');

INSERT INTO course (course_name, credits, professor_id, prerequisite_course_id) VALUES
('Math 101', 3, 1, NULL),
('Math 102', 3, 1, 1),
('Physics 101', 4, 2, NULL),
('Programming 101', 3, 3, NULL);

INSERT INTO enrollments (student_id, course_id, enrollment_date, grade_value) VALUES
(1, 1, '2025-01-20', 3.75),
(1, 3, '2025-01-21', 4.00),
(2, 1, '2025-01-22', 3.50),
(3, 4, '2025-01-23', 3.25);
