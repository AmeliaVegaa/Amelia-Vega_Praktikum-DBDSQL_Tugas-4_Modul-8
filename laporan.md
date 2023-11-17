# SQL JOIN
Praktikum 4 - Amelia Vega - 225150600111021 - DBDSQL Kelas A

### Latihan JOIN
1. Tampilkan semua nama Mahasiswa beserta nama department.
   ```
   SELECT student.name, department.dept_name, student.tot_cred
   FROM student
   JOIN department ON student.dept_name = department.dept_name
   WHERE student.tot_cred > 100;
   ````

2. Tampilkan semua nama student beserta nama department yang memiliki total SKS
(total credit) lebih dari 100.
    ```
    SELECT student.name, department.dept_name, student.tot_cred
    FROM student
    JOIN department ON student.dept_name = department.dept_name
    WHERE student.dept_name = department.dept_name AND student.tot_cred >
    100;
    ```

3. Tampilkan nama student dan nama instructor yang bekerja pada department yang
sama
    ```
    SELECT student.name, department.dept_name, instructor.name
    FROM student
    JOIN department ON student.dept_name = department.dept_name
    JOIN instructor ON student.dept_name = instructor.dept_name
    WHERE student.dept_name = instructor.dept_name;
    ```
