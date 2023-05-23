The Organization is planning to gift the best performing manager who made the best sales and want to know the region which the manager belongs to?

Select Manager, Round(Sum(sales),2) As Total_Sales, T.Region
From transactions T
joiN `regional manager` Rm
on T.Region = Rm.Region
Group by Manager, T.Region
Order by Total_sales DESC
Limit 1

How many times was delivery truck used as the ship mode?

Select COUNT(`Ship mode`) As Total 
From`transactions`
Where `Ship mode` = 'delivery truck'

How many orders were returned, and which product category got rejected the most?

Select COUNT(`Order status`) As Total 
From `returned table`
Where `Order status` = 'Returned'

SELECT `Product category`, Count(`Order status`) as total_returned
FROM `transactions` 
JOIN `returned table`
ON `transactions`.sales_id = `returned table`.sales_id
Where `Order status` = 'Returned'
Group by `Product Category`
Order by total_returned DESC
Limit 1

Which Year did the company incurred the least shipping cost?

SELECT REALORDERDATE, `Shipping cost`
 FROM `transactions`
 Order by `shipping cost`
 Limit 1
 
 Display the day of the week in which customer segment has the most sales?
 
 Select `Customer Segment`, Sales, Weekday(REALORDERDATE) As Weekday
 From `transactions`
 Order by Sales Desc
 Limit 1

The company want to determine its profitability by knowing the actual orders that were delivered.

Select COUNT(`Order status`) As Total 
From `returned table`
Where `Order status` = 'Delivered'

The Organization is eager to know names Of customers born from 1980?

Select `First Name`, `Last Name`, Birth_Date
From `transactions`
Where Birth_Date >= '1980-01-01'
Order by `First Name`

What are the aggregate orders made by all the customers?

Select Count(Order_id) AS Aggregate_orders
From transactions

The company intends to discontinue any product that brings in the least profit, you are required to help the organization to determine the product?

Select `Product Category`, Sum(profit) as total_profit
From `transactions`
Group by `Product Category`
Order by total_profit
limit 2

Top 2 best-selling items

Select `Product Sub-Category`, ROUND(Sum(sales),2) as total_sales
From `transactions`
Group by `Product Sub-Category`
Order by total_sales DESC
Limit 2
