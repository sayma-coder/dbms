use master

select * from instruct;

------count

select count(dept_name) as count_ID from instruct;
select count(ID) as cnt_ID from instruct where dept_name='Physics';



------max

select max(salary) as maxSalary from instruct;

----min
select min(salary) as minSalary from instruct;


---avg

select avg(salary) as avg_salary from instruct;

