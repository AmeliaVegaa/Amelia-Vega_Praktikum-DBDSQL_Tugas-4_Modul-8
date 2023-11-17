SELECT student.name, department.dept_name, student.tot_cred
FROM student
JOIN department ON student.dept_name = department.dept_name
WHERE student.dept_name = department.dept_name AND student.tot_cred >
100;
