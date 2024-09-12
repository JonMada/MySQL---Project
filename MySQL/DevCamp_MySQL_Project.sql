USE devcamp_project_schema;

-- The average grade that is given by each professor
SELECT p.professors_name,
    AVG(g.grades_score) AS average_score
FROM grades g
JOIN professors p
ON g.professor_id_grades = p.professors_id
GROUP BY p.professors_name;

-- The top grades for each student
SELECT s.students_name,
	MAX(g.grades_score) AS top_grades
FROM grades g
JOIN students s
ON g.students_id_grades = s.students_id
GROUP BY s.students_name;

-- Sort students by the courses that they are enrolled in
SELECT s.students_name,
    COUNT(g.courses_id_grades) AS number_of_courses
FROM grades g
JOIN students s
ON s.students_id = g.students_id_grades
GROUP BY s.students_name
ORDER BY number_of_courses DESC;

-- Create a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course
SELECT c.courses_name,
    AVG(g.grades_score) AS average_grades
FROM grades g
JOIN courses c
ON c.courses_id = g.courses_id_grades
GROUP BY c.courses_name
ORDER BY average_grades ASC;

-- Finding which student and professor have the most courses in common
SELECT s.students_name, p.professors_name,
    COUNT(g.courses_id_grades) AS common_courses
FROM grades g
JOIN students s 
ON g.students_id_grades = s.students_id
JOIN professors p 
ON g.professor_id_grades = p.professors_id
GROUP BY s.students_name, p.professors_name
ORDER BY common_courses DESC
LIMIT 1;


	

  
