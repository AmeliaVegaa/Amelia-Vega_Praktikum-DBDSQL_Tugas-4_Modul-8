SELECT student.name, department.dept_name, instructor.name
FROM student
JOIN department ON student.dept_name = department.dept_name
JOIN instructor ON student.dept_name = instructor.dept_name
WHERE student.dept_name = instructor.dept_name;
