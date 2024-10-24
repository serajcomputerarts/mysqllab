drop database if exists seraj;
create database seraj;
use seraj;
create table student(
    id int primary key,
    name varchar(20),
    city varchar(10)
);
delimiter //
create procedure add_student(
    IN _id int,
    IN _name varchar(20),
    IN _city varchar(10))
begin 
insert into student (id,name,city)
values
(_id,_name,_city);
end//
delimiter ;
call add_student(11,'hadi','Tabriz');
select * from student;

