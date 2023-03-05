----create alter and drop
use master
create database University
use University

create table DEPARTMENT(

	Dept_name varchar(20),
	Building_name varchar(20),
	Budget numeric(12,2),
	primary key(Dept_name)
);

insert into DEPARTMENT 
(Dept_name,Building_name,Budget) values ('ICE','Engineering building','90000');

insert into DEPARTMENT 
(Dept_name,Building_name,Budget) values ('CSE','Engineering building','80000');

insert into DEPARTMENT 
(Dept_name,Building_name,Budget) values ('EEE','Engineering building','90500');

insert into DEPARTMENT 
(Dept_name,Building_name,Budget) values ('Physics','Science building','50500');

insert into DEPARTMENT 
(Dept_name,Building_name,Budget) values ('Social Work','Arts building','30500');


select * from DEPARTMENT

alter table DEPARTMENT add Course_id varchar(20);

drop table DEPARTMENT

