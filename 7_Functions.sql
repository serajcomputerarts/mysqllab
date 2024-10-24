drop database if exists seraj;
create database seraj;
use seraj;
create table student(
    id int primary key,
    name varchar(20),
    city varchar(10)
);
delimiter //
create function get_name(_id int) 
RETURNS varchar(20)
begin
select name into @_name from student where id=_id; 
return @_name;
end//
delimiter ;
insert into student (id,name,city)
values (11,'Hadi','Tabriz');
insert into student (id,name,city)
values (22,'Reza','Tabriz');
insert into student (id,name,city)
values (33,'Ali','Tehran');
select get_name(11);