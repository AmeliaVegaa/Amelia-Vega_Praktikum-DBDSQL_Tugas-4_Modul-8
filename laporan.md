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
   ![1](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-4_Modul-8/assets/133181467/4b8f0b6a-0365-4652-a6ee-6fc9158e191a)


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
    ![3](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-4_Modul-8/assets/133181467/58d92255-c8cd-4326-ab55-6ca7988dd732)

