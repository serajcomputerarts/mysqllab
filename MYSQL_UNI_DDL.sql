drop database if exists uni;
create database uni;
use uni;

create table classroom(
building varchar(15),
room_number varchar(7),
capacity int);

create table department
(dept_name varchar(20),
building varchar(15), 
budget int, 
primary key (dept_name));

create table course
(course_id varchar(8),
title varchar(50), 
dept_name varchar(20),
credits int,
primary key (course_id),
foreign key (dept_name) references department (dept_name));

create table instructor
(ID varchar(5), 
name varchar(20), 
dept_name varchar(20), 
salary int,
primary key (ID),
foreign key (dept_name) references department(dept_name));

create table section(
course_id varchar(8), 
sec_id varchar(8),
semester 	varchar(6), 
year int, 
building varchar(15),
room_number varchar(7),
time_slot_id varchar(4));

create table teaches(
ID varchar(5), 
course_id 	varchar(8),
sec_id varchar(8), 
semester 	varchar(6),
year int);

create table student
(ID varchar(5), 
name varchar(20) not null, 
dept_name varchar(20), 
tot_cred int,
primary key (ID),
foreign key (dept_name) references department (dept_name));

create table takes(
ID varchar(5), 
course_id 	varchar(8),
sec_id varchar(8), 
semester 	varchar(6),
year int,
grade  varchar(2));

create table advisor
(s_ID varchar(5),
i_ID varchar(5),
primary key (s_ID),
foreign key (i_ID) references instructor (ID),
foreign key (s_ID) references student (ID));

create table time_slot(
time_slot_id  varchar(4),
day varchar(1),
start_hr int,
start_min int,
end_hr int,
end_min int);

create table prereq
(course_id varchar(8), 
prereq_id 	varchar(8),
primary key (course_id, prereq_id),
foreign key (course_id) references course (course_id),
foreign key (prereq_id) references course (course_id));



