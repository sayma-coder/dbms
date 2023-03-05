use masud190608


CREATE TRIGGER trg_update_item ON Transactions FOR INSERT
AS
BEGIN
DECLARE @item_id char(6), @tranamount int, @tran_type char(1),@cusld_id char(6),@price money
SELECT @item_id=item_id, @tranamount=tran_quantity, @tran_type=tran_type,@cusld_id =cusl_id FROM INSERTED
Select @price=item_price from item where item_id=@item_id
set @price = @price * @tranamount
 IF (@tran_type ='S')
     begin
       update  CustomerAndSuppliers set sales_amnt=sales_amnt+@price+@price*0.1 where cusl_id=@cusld_id
     end
 ELSE
   begin
    update  CustomerAndSuppliers set proc_amnt=proc_amnt+@price+@price*0.1 where cusl_id=@cusld_id
    end
END

drop  TRIGGER trg_update_item

insert transactions(tran_id ,item_id,cusl_id,tran_type,tran_quantity)
 values('T000000013','P00014','S00014','O',5)

INSERT customerAndsuppliers
(cusl_id,cusl_fname,cusl_lname,cusl_address,cusl_telno,cusl_city,sales_amnt,proc_amnt) VALUES
('S00014','tofail','ahmed','kushtia,kushtia ','017-22633140','Kushtia',100,1000)


insert Item(item_id ,item_name,item_category,item_price ,item_qoh )
values('P00014','tofail b','Tab',100,1000)

select * from transactions
select * from CustomerAndSuppliers
select * from item


