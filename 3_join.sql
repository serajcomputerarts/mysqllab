drop database if exists serajdb;
create database serajdb;
use serajdb;
create table student(
id int,
name varchar(100),
city varchar(10),
primary key (id));
create table marks(
id int,
grade float);
insert into marks (id,grade) 
values (11,19),(11,20),(44,9);
insert into student (id,name,city)
values (11,"hadi","tabriz"),(22,"reza","Tehran");
select name,grade from student,marks;
select name,grade from student join marks on student.id=marks.id;
select name,grade from student 
left join marks on 
student.id=marks.id;
select name,grade from student 
right join marks on 
student.id=marks.id;