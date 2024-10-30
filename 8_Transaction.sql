drop database if exists serajdb;
create database serajdb;
use serajdb;
create table student(
id int,
name varchar(100),
city varchar(10),
primary key (id));
insert into student (id,name,city)
values (11,"hadi","tabriz"),(22,"reza","Tehran");
# ----------- Start Transaction 
Start Transaction;
insert into student(id,name,city)
values (33,"Gholi","Paris");
select * from student;
# ----------- Now we are rolling back
rollback;
select * from student;
# ----------- Goli was removed from table


