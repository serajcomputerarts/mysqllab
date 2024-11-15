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
insert into student (id,name,city)
values (11,"hadi","tabriz"),(22,"reza","Tehran"),
(33,"farhad","Tabriz"),(44,"ali","Tehran");
insert into marks (id,grade) 
values (11,19),(22,20),(33,9),(44,5);
create view grades as 
select name,grade from student join marks on
student.id=marks.id;
select count(*) from grades where grade<10;
select sum(grade)/count(*) from grades;
select name,avg(grade) from grades
group by (name);
select name,avg(grade) from grades
group by (name) having avg(grade)<10;





