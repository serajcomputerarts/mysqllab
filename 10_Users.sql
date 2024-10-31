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
CREATE USER 'farhad'@'localhost' 
IDENTIFIED BY '1234';
GRANT INSERT, SELECT
 on serajdb.student TO 
 'farhad'@'localhost';
CREATE USER 'hadi'@'localhost' 
IDENTIFIED BY '1234';
 GRANT ALL PRIVILEGES ON serajdb.* 
 TO 'hadi'@'localhost';
 SHOW GRANTS FOR 'farhad'@'localhost';
 REVOKE insert ON serajdb.student 
 FROM 'farhad'@'localhost';