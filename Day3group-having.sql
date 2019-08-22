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
*/

--can use top (#) command to get top 

select top 3 * from customers order by sales 

--want to look at rows with specific Id's
select * from customers 
 where id in (1, 27, 34)
 order by sales desc

 select id from customers 
 where Name in ('Kroger', 'Nationwide', 'Abercrombie Fitch')

 --Using 'where Id in' and 'where name in'
 select * from customers 
 where id in (select id from customers 
 where Name in ('Kroger', 'Nationwide', 'Abercrombie Fitch'))


 select * from Orders;
 select * from OrderLines;