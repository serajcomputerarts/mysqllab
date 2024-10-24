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
create table course(
cid int,
title varchar(10),
credit int,
primary key(cid));
insert into course (cid,title,credit) 
values (1,"C++",3),(2,"Network",2);
create table sc(
sid int,
cid int, 
mark float,
foreign key (sid) references student(id)
 ON UPDATE CASCADE ON DELETE RESTRICT,
foreign key (cid) references course(cid) 
ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=INNODB;
insert into sc(sid,cid,mark)
values (11,1,17),(11,2,19),(22,1,10),(22,2,8);
select * from sc;
update student set sid=100 where sid=11;
select * from sc;