 ----create from, where, select
use master
create database University
use University

create table dept(

	Dept_name varchar(20),
	Building varchar(20),
	Budget numeric(12,2),
	primary key(Dept_name)
);

insert into dept 
(Dept_name,Building,Budget) values ('ICE','Engineering building','90000');

insert into dept 
(Dept_name,Building,Budget) values ('CSE','Engineering building','80000');

insert into dept 
(Dept_name,Building,Budget) values ('EEE','Engineering building','90500');

insert into dept 
(Dept_name,Building,Budget) values ('Physics','Science building','50500');

insert into dept 
(Dept_name,Building,Budget) values ('Social Work','Arts building','30500');


select * from dept

select Building from dept;
select Dept_name from dept where Building='Engineering building';


