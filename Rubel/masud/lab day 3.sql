



create proc sp_showTitleAndAuthor @catagory_name char(15),@price_value money
as 
begin 
 declare @price money
 select @price=avg(item_price) from item where item_catagory=@catagory_name
    
     while  @price<@price_value
        begin
          update item set item_price=item_price+item_price*.1 where item_catagory=@catagory_name
          select @price=avg(item_price) from item where item_catagory=@catagory_name
        end 
end
exec sp_showTitleAndAuthor 'phone',55.9
select avg(item_price) from item where item_catagory='phone'
select * from item


