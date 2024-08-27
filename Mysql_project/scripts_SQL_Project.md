# Project Overview

Build a SQL database for a university that manages students, courses, professors, and grades.

# Project Technical Requirements

## The project needs to contain the following technical features:

- Build a database with the following tables: Students, Courses, Professors, Grades
- Foreign key relationships between the tables
- Create a script that populates all of the database tables with sample data
(See folder)

# SQL query scripts for:

- The average grade that is given by each professor 

```sql

SELECT 
    professors.professors_name,
    AVG(grades.grades_exam) AS average_exam_grade
    
FROM grades

JOIN  courses_professors ON grades.grades_courses_id = courses_professors.courses_professors_courses_id
JOIN  professors ON courses_professors.courses_professors_professors_id = professors.professors_id

GROUP BY professors.professors_name;
```

- The top grades for each student

```sql
SELECT 
    students.students_name AS student,
    MAX(grades.grades_exam) AS Top_exam_grade

FROM students

JOIN students_enrollments ON students.students_id = students_enrollments.students_enrollments_students_id
JOIN grades ON students.students_id = grades.grades_students_id AND students_enrollments.students_enrollments_courses_id = grades.grades_courses_id

GROUP BY students.students_name;

```

- Sort students by the courses that they are enrolled in

```sql
SELECT 
	courses.courses_name AS course,
    students.students_name AS student,
    students.students_id AS student_id
    
FROM students

JOIN students_enrollments ON students_enrollments.students_enrollments_students_id = students.students_id
JOIN courses ON students_enrollments.students_enrollments_courses_id = courses.courses_id

ORDER BY courses.courses_name;

```

- Create a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course

```sql
SELECT 
    courses.courses_name AS Course,
    AVG(grades.grades_exam) AS Average_grade

FROM courses
 
JOIN students_enrollments ON courses.courses_id = students_enrollments.students_enrollments_courses_id

JOIN grades 
    ON students_enrollments.students_enrollments_students_id = grades.grades_students_id 
    AND students_enrollments.students_enrollments_courses_id = grades.grades_courses_id

GROUP BY courses.courses_name

ORDER BY Average_grade ASC;
```

- Finding which student and professor have the most courses in common

```sql
SELECT 
    students_enrollments.students_enrollments_students_id AS Student_ID,
    students.students_name AS Student_Name,
    courses_professors.courses_professors_professors_id AS Prof_ID,
    professors.professors_name AS Prof_Name,
    COUNT(*) AS common_courses

FROM students_enrollments

JOIN students ON students_enrollments.students_enrollments_students_id = students.students_id
JOIN courses ON students_enrollments.students_enrollments_courses_id = courses.courses_id
JOIN courses_professors ON courses.courses_id = courses_professors.courses_professors_courses_id
JOIN professors ON courses_professors.courses_professors_professors_id = professors.professors_id

GROUP BY 
    students_enrollments.students_enrollments_students_id,
    professors.professors_id

ORDER BY common_courses DESC;
```
