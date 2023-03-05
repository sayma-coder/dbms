use master

create table instruct(

	ID varchar(20),
	name varchar(20) not null,
	dept_name varchar(20),
	salary numeric(8,2),
	primary key(ID)
);

insert into instruct  values ('10101','Srinivasan','CSE',65000);

insert into instruct  values ('12121','Wu','Finance',90000);

insert into instruct values ('15151','Mozart','Music',40000);

insert into instruct  values ('22222','Einstein','Physics',95000);

insert into instruct values ('32343','EI Said','History',60000);

insert into instruct values ('33456','Gold','Physics',87000);






create table DEPARTMENT(

	dept_name varchar(20),
	Building_name varchar(20),
	Budget numeric(12,2),
	primary key(Dept_name)
);


insert into DEPARTMENT 
(dept_name,Building_name,Budget) values ('ICE','Engineering building','90000');

insert into DEPARTMENT 
(dept_name,Building_name,Budget) values ('CSE','Engineering building','80000');

insert into DEPARTMENT 
(dept_name,Building_name,Budget) values ('EEE','Engineering building','90500');

insert into DEPARTMENT 
(dept_name,Building_name,Budget) values ('Physics','Science building','50500');

insert into DEPARTMENT 
(dept_name,Building_name,Budget) values ('Social Work','Arts building','30500');


select * from DEPARTMENT


select * from instruct

-----cartesian product

select Building_name,salary from DEPARTMENT,instruct where DEPARTMENT.dept_name=instruct.dept_name;

-----join operation
select ID,name,budget from DEPARTMENT join instruct on DEPARTMENT.dept_name=instruct.dept_name;


----left outer join
select * from DEPARTMENT left outer join instruct on DEPARTMENT.dept_name=instruct.dept_name;

----right outer join
select * from DEPARTMENT right outer join instruct on DEPARTMENT.dept_name=instruct.dept_name;


---full outer join
select * from DEPARTMENT full outer join instruct on DEPARTMENT.dept_name=instruct.dept_name;

