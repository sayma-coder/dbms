create database ice
use ice
create table department(
	Dept_name varchar(20),
	Building_name varchar(20),
	Budget numeric(12,2),
	primary key(Dept_name)
);

insert into department 
(Dept_name,Building_name,Budget) values ('ICE','Engineering building','90000');

insert into department 
(Dept_name,Building_name,Budget) values ('CSE','Engineering building','80000');

insert into department 
(Dept_name,Building_name,Budget) values ('EEE','Engineering building','90500');

insert into department 
(Dept_name,Building_name,Budget) values ('Physics','Science building','50500');

insert into department 
(Dept_name,Building_name,Budget) values ('Social Work','Arts building','30500');

;

-----deleting


delete from department where Dept_name='EEE';

---updating

update department set Budget=Budget+Budget*0.5 where Budget<40000;
