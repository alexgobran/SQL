select name as 'Customers', concat(city, ', ', state) as 'City/State', 
orders.id as 'Order Id', format(date, 'MMM/dd/yyyy') as 'Order Date'
 from orders
join customers
on orders.CustomerId = customers.id
where name = 'KFC'
order by name

select name as 'Customers', concat(city, ', ', state) as 'City/State', 
orders.id as 'Order Id', format(date, 'MMM/dd/yyyy') as 'Order Date'
 from orders
join customers
on orders.CustomerId = customers.id
where orders.id >=2020 and orders.id <=2040
order by orders.Id


select name as 'Customers', concat(city, ', ', state) as 'City/State', 
orders.id as 'Order Id', format(date, 'MMM/dd/yyyy') as 'Order Date'
 from orders
join customers
on orders.CustomerId = customers.id
where orders.id >=2020 and orders.id <=2040
order by orders.Id

select * from OrderLines