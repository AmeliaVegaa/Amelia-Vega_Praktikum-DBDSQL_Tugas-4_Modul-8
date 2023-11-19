# SQL JOIN
Praktikum 4 - Amelia Vega - 225150600111021 - DBDSQL Kelas A
#
#
### Latihan JOIN
Sebelum menjawab pertanyaan dari soal, praktikan mendownload database_universitas.sql lalu melakukan running pada sekitar 34 ribu baris insert yang tersimpan. Kemudian, praktikan menerapkan sintax use untuk sampel_university.
   ```
   create database sampel_university;
   use sampel_university;

   create table classroom
    (building		varchar(15),
    room_number		varchar(7),
    capacity		numeric(4,0),
    primary key (building, room_number)
    );

   create table department
	 (dept_name		varchar(20), 
	 building		varchar(15), 
	 budget		        numeric(12,2) check (budget > 0),
	 primary key (dept_name)
	 );

   create table course
	 (course_id		varchar(8), 
	 title			varchar(50), 
	 dept_name		varchar(20),
	 credits		numeric(2,0) check (credits > 0),
	 primary key (course_id),
	 foreign key (dept_name) references department(dept_name)
    on delete set null
	 );

   create table instructor
	 (ID			varchar(5), 
    name			varchar(20) not null, 
	 dept_name		varchar(20), 
	 salary			numeric(8,2) check (salary > 29000),
	 primary key (ID),
	 foreign key (dept_name) references department(dept_name)
	 on delete set null
	 );

   create table section
	 (course_id		varchar(8), 
    sec_id			varchar(8),
	 semester		varchar(6)
 	 check (semester in ('Fall', 'Winter', 'Spring', 'Summer')), 
	 year			numeric(4,0) check (year > 1701 and year < 2100), 
	 building		varchar(15),
	 room_number		varchar(7),
	 time_slot_id		varchar(4),
	 primary key (course_id, sec_id, semester, year),
	 foreign key (course_id) references course(course_id)
	 on delete cascade,
	 foreign key (building, room_number) references classroom(building, room_number)
	 on delete set null
	 );

   dan sintax seterusnya ......
   ````
   ![Screenshot 2023-11-19 100232](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-4_Modul-8/assets/133181467/7a38902f-6a52-4667-ab24-a4401c9c2359)

#
#
### Soal & Jawaban
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
   ![Screenshot 2023-11-19 100433](https://github.com/AmeliaVegaa/Amelia-Vega_Praktikum-DBDSQL_Tugas-4_Modul-8/assets/133181467/bc821a2c-b15c-4eda-b360-bcd3108a9c5e)

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

