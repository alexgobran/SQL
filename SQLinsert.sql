--Delete by primary key
delete from orders
where Id = 26

--Update the order we just added
update orders set
description= 'My First updated Order for Kroger', 
customerId = (select id from customers where name = 'Kroger')
where id = 26;

select * 
from orders o 
join customers c 
on c.id = o.customerid
where o.id = 26;

--Insert a orders
 select * 
from orders o
join customers c 
on c.Id = o.CustomerId
where o.Id = (select max(id) from orders)


select id from Customers where name = 'Verizon';

insert into orders (CustomerId, Date, Description)
values (
(select id from Customers where name = 'Verizon'),
'2019-08-2021', 'My first manual insert into orders');


/*insert into Customers (Name, City, State, Sales, Active)
			values ('Alex Gobran', 'Cincinnati', 'OH', 1000000, 1);

select * from customers where name = 'Alex Gobran';
*/
