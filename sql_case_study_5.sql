-- 6. Count the number of occurrences of each city.
select * from supermarket;
select City,count(*)
from supermarket
group by City;
-- 7. Find the most frequently used payment method.
select Payment,count(*) from supermarket group by Payment 
order by count(*) desc;
-- 8. Does The Cost of Goods Sold Affect The Ratings That The Customers Provide? 
select * from supermarket;
select cogs, Rating
from supermarket order by Rating desc;
-- 9. Find the most profitable branch as per gross income.
select * from supermarket;
select Branch,round(sum(`gross income`),2) as sum_gross_income 
from supermarket group by Branch order by sum_gross_income desc; 
-- 10.  Find the most used payment method city-wise.
select City,Branch,sum(`gross income`) from supermarket group by City,Branch;
-- 11. Find the product line purchased in the highest quantity.
select 'Product line',sum(Quantity)
from supermarket
group by 'Product line'
order by sum(Quantity) desc;
-- 12. Display the daily sales by day of the week.
select * from supermarket;
update supermarket SET date = str_to_date(Date,'%m/%d/%Y');
select * from supermarket;
select dayname(date),dayofweek(date),sum(Total) from supermarket group by  dayname(date),dayofweek(date);
-- 13. Find the month with the highest sales.
select monthname(date) as name,month(date) as month,sum(Total) as total from supermarket
group by name,month order by total desc;


