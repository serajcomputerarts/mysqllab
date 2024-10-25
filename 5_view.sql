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
values (11,19),(11,20),(22,9),(22,8);
insert into student (id,name,city)
values (11,"hadi","tabriz"),(22,"reza","Tehran");
create view StudentMark as 
select name,grade from student 
join marks 
on student.id=marks.id;
select * from StudentMark;
select name from StudentMark 
where grade<10;