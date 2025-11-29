create database coffeesales;
use coffeesales;

select * from `index`;

-- Top 5 most Sales of Product
select 
	coffee_name,
    round(sum(money),2)as Sales
from 
	`index`
group by 
	coffee_name
order by sales desc
limit 5;


-- monthly sales trend
select 
	month(`date`) as `Months`,
    round(sum(money),2) as `Sales`
from 
	`index`
group by 
	`Months`
order by 
	`Sales` desc;


-- Top selling Coffee
select 
	coffee_name,
	count(coffee_name) as `Count`
from 
	`index`
group by 
	coffee_name
order by 
	`Count` desc;
    
    
-- Payment Method used 
select 
	cash_type,
    round(sum(money),2) as `Total Money`
from 
	`index`
group by 
	cash_type
order by 
	`Total Money` desc;