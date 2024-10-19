create table _order(
o_Id int primary key,
o_name nvarchar(20),
orderDate Date default GETDATE(),
shippingAdress nvarchar(40),
);

insert into _order(o_Id,o_name,shippingAdress)
values (1,'A52 cover','Jordan, Irbid, Sheikh khalik Garage');

select * from _order;