# University Enrollment System

This mySql program creates a database called university_enrooment_system which will contain 4 tables for the time being.
The tables are student, course, enrollments, and professor. The point of this database is that this is a very simple university.

----------------------------------------------------------------------------
## Table of Contents
  - Business Rules (The business rules I used to create this database)
  - Installation
  - Usage
  - Contributing
  - Credits
  - License

----------------------------------------------------------------------------------


## Business Rules 
  - A student can enroll in many courses, and a course can have many students.
  - Each course is taught by one professor, and a professor can teach many courses.
  - A course may have one or more prerequisites, but a prerequisite can be required for many courses.
  - A student can have multiple grades, but each grade is associated with only one course.

## Installation
  - download the code
  - save it on your computer as a .sql file
  - run the code on the notepad

  - copy and paste the code into an sql workbench file
  - save as name.sql
  - run the code on the mysql workbench

## Usage
  - You can add more data to this database by using the INSERT cluase like I do
    
    Example INSERT for the student table:
    INSERT INTO student (student_first, student_last, student_email, student_enrollment_date) VALUES
    ('Alice', 'Johnson', 'alice.johnson@edu.com', '2025-01-15'),
    ('Bob', 'Smith', 'bob.smith@edu.com', '2025-01-16'),
    ('Charlie', 'Brown', 'charlie.brown@edu.com', '2025-01-17');

  - You can delete data using the DELETE cluase
  - You can update the data currently in the database by using the UPDATE cluase

## Contributing
  - No contribution needed
  - If you want to take what I have and upgrade it do that on your own.

## Credits
  - Hunter Hanson

## License
  - No license needed

