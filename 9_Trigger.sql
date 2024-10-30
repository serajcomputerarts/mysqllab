drop database if exists serajdb;
create database serajdb;
use serajdb;
create table student(
    id int,
    name varchar(20),
    avg float,
    primary key(id)
);
delimiter //
CREATE TRIGGER ins_student BEFORE INSERT ON student
       FOR EACH ROW 
       BEGIN
       IF NEW.avg>20 THEN SET NEW.avg=20;
       ELSEIF NEW.avg<0 THEN SET NEW.avg=0;
       END IF;
       END//
delimiter ;

insert into student (id,name,avg) 
values (11,"Hadi",12.5),(22,"Reza",25),(33,"gholi",-17);
