/*RESTAURANT SALES SQL QUERIES*/




/*Total Revenue*/

SELECT SUM(Total) AS  total_revenue FROM Cafe


--Average Order Value

SELECT SUM(Total)/ COUNT(distinct Bill_Number) AS average_order_value
FROM Cafe;


--Total number of items sold

SELECT SUM(Quantity) AS total_items_sold FROM Cafe;


--Total Orders

SELECT COUNT(distinct Bill_Number) AS total_orders FROM Cafe;


--Average items per order

SELECT CAST(CAST(SUM(Quantity) AS decimal(10,2))/
CAST(COUNT(distinct Bill_Number) AS decimal(10,2))AS decimal(10,2)) AS avg_items_per_order FROM Cafe;


--Daily Trend for Total Orders

SELECT DATENAME(DW,Date) AS order_day,
COUNT(DISTINCT Bill_Number) AS total_orders
FROM Cafe
GROUP BY DATENAME(DW,Date)
ORDER BY total_orders DESC

--Daily Trend for Total Revenue

SELECT DATENAME(DW,Date) AS order_day,
SUM(Total) AS total_rev
FROM Cafe
GROUP BY DATENAME(DW,Date)
ORDER BY total_rev DESC



--Monthly trend for Total Orders

SELECT DATENAME(MONTH, Date) AS month_name, 
COUNT(DISTINCT Bill_Number) AS total_orders
FROM Cafe
GROUP BY  DATENAME(MONTH, Date)
ORDER BY total_orders DESC
--Monthly trend for Total revenue

SELECT DATENAME(MONTH,Date) AS order_day,
SUM(Total) AS total_rev
FROM Cafe
GROUP BY DATENAME(MONTH,Date)
ORDER BY total_rev DESC


--	Top 5 Item generating best revenue
SELECT TOP 5 Item_Desc, SUM(Total) AS Total_revenue_per_item FROM Cafe
GROUP BY Item_Desc
ORDER BY Total_revenue_per_item DESC

--	Top 5 Item generating least revenue
SELECT TOP 5 Item_Desc, SUM(Total) AS Total_revenue_per_item FROM Cafe
GROUP BY Item_Desc
ORDER BY Total_revenue_per_item ASC



--	Top 5 items with most number of sales

SELECT TOP 5 Item_Desc, COUNT(Bill_Number) AS Total_orders_per_item FROM Cafe
GROUP BY Item_Desc
ORDER BY Total_orders_per_item DESC



--Top 5 items with least number of sales
SELECT TOP 5 Item_Desc, COUNT(Bill_Number) AS Total_orders_per_item FROM Cafe
GROUP BY Item_Desc
ORDER BY Total_orders_per_item ASC















 


