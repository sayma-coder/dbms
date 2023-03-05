--D(4)TRIGARRING
use master
create table demo
(
item_id char(6) primary key check (item_id like ('[P][0-9][0-9][0-9][0-9][0-9]')),
item_name char(12),
item_catagory char(10),
item_price float check(item_price>=0),
item_qoh int check(item_qoh>=0),
item_last_sold datetime  default getdate()
)
insert into demo(item_id,item_name,item_catagory,item_price,item_qoh)
values('P00012','Samia','Tab',14,30)

insert into demo(item_id,item_name,item_catagory,item_price,item_qoh)
values('P00013','Yasmin','laptop',24,40)

insert into demo(item_id,item_name,item_catagory,item_price,item_qoh)
values('P00014','Suhada','mobile',34,50)
select * from demo

create trigger tri_test_insert on demo for insert
as
begin
print 'one item insert into the table'
end

create trigger tri_test_delete on demo for delete
as
begin
print 'one item delete from the table'
end
delete from demo where item_id = 'P00013'
--drop trigger tri_test_delete
select * from demo

--D(4):::2---
create TABLE demo2
(
cusl_id CHAR(6) PRIMARy KEY CHECK (cusl_id LIKE('[CS][0-9][0-9][0-9][0-9][0-9]')),
cusl_fname CHAR(15) NOT NULL,
cusl_lname VARCHAR (15),
cusl_address TEXT,
cusl_telno CHAR(12) CHECK(cusl_telno LIKE('[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')),
cusl_city CHAR(12) DEFAULT 'Rajshahi',
sales_amnt MONEY CHECK(sales_amnt>=0),
proc_amnt MONEY CHECK(proc_amnt>=0)
)

INSERT demo2
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES
('S40902','to','ah','khulna,khulna','017-22633141','Kushtia',70,190)

INSERT demo2
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES
('S40903','fa','med','khulna,khulna','017-22633142','Khulna',7,19)

INSERT demo2
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES
('S40904','il','ed','kushtia,kushtia ','017-22633143','Kushtia',77,199)
select * from demo2

create table demo3
(
tran_id char(10) primary key check (tran_id like '[T][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
item_id char(6) foreign key references Item(item_id), 
cusl_id char(6) foreign key references customerAndsuppliers(cusl_id) ,
tran_type char(1),
tran_quality int check (tran_quality>=0),
tran_date datetime default getdate()

)
insert into demo3(tran_id,item_id,cusl_id,tran_type,tran_quality)
values('T219843769','P00012','S40902','O','10')

insert into demo3(tran_id,item_id,cusl_id,tran_type,tran_quality)
values('T219843786','P00013','S40903','S','12')

insert into demo3(tran_id,item_id,cusl_id,tran_type,tran_quality)
values('T219843779','P00014','S40904','P','14')
select * from demo3
drop table Transactions

 create trigger tri_update_item on transactions for insert
 as
 begin
 declare @item_id char(6),@tran_quality int,@tran_type char(1)
 select
 @item_id = item_id,@tran_quality = tran_quality,@tran_type = tran_type from inserted
 if (@tran_type = 'S')
 update Item set item_qoh = item_qoh-@tran_quality where item_id = @item_id
 else
 update Item set item_qoh = item_qoh+@tran_quality where item_id = @item_id
 end
 
insert into transactions(tran_id,item_id,cusl_id,tran_type,tran_quality)
values('T219843772','P00012','C00007','S',2)

insert into item(item_id,item_name,item_catagory,item_price,item_qoh)
values('P00012','Sa','Ta',25,33)

 drop trigger tri_update_item
 select*from Transactions
 select * from Item
 
 delete from Item where item_id = 'P00012'
 delete from Transactions where item_id = 'P00012'
 
 drop table Item
 drop table Transaction
 
 