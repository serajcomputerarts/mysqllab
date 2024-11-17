drop database if exists seraj;
create database seraj;
use seraj;
create table student(
    id int primary key,
    name varchar(20),
    city varchar(10));

delimiter //
create procedure add_student(
    IN _id int,
    IN _name varchar(20),
    IN _city varchar(10))
begin 
insert into student (id,name,city)
values(_id,_name,_city);
end//
delimiter ;

call add_student(11,'Farhad','Tabriz');
call add_student(22,'Reza','Tabriz');
call add_student(33,'Ali','Tehran');
call add_student(44,'Hadi','Tehran');
call add_student(55,'Gholi','Tabriz');

select * from student;
CREATE TEMPORARY TABLE tbz_students AS
SELECT * from student where city='Tabriz';

select * from tbz_students;
drop TEMPORARY table tbz_students;
create TEMPORARY table tbz_students(
    id int primary key,
    name varchar(20),
    city varchar(10));

INSERT INTO tbz_students (id,name,city)
SELECT id,name,city FROM student 
where city='Tabriz';   

