--show customers who sales is greater than average of all customers

Select * From Customers 
where sales> 56951;

(select avg(sales) from Customers);

--it get the average first and then feeds it into other statements (subquery or subselect) it runs the query in the brackets first

Select * From Customers 
where sales> (select avg(sales) from Customers);

--update customers set sales = sales + 100000 where name = 'Kroger'



--sql takes entire records and breaks them into groups, we are to find the sum of sales for each city 
--can use group by (give it columns to group by data in those columns)

/*select *from customers;

select sum(sales) from customers;

select sum(sales) from customers where city='Cincinnati'

group by City 
*/

--using Having<booleans> works on group data only not individual data. You can use group with using having but not the other way
/*select city, count(*), sum(sales)
from customers 
group by city
having sum(sales) > 600000
order by sum(sales) desc
/*

