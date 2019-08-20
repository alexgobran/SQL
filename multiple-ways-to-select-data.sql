--select * from customers;
--select City, State,Id, Name from Customers; 
/*
--select * from customers where (state = 'OH');
select * from customers 
where (state = 'OH') OR (state = 'KY')
order by state desc, city
*/
select * from customers where (city= 'jersey city')

