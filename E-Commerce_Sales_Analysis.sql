USE ecommerce_sales;

SELECT SUM(Sales) AS Total_Sales
FROM train;
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM train;
SELECT COUNT(DISTINCT `Customer ID`) AS Total_Customers
FROM train;
SELECT Category, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT Region, SUM(Sales) AS Total_Sales
FROM train
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT `Product Name`, SUM(Sales) AS Total_Sales
FROM train
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT 
    DATE_FORMAT(STR_TO_DATE(`Order Date`, '%m/%d/%Y'), '%Y-%m') AS Sales_Month,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Sales_Month
ORDER BY Sales_Month;
SELECT 
    `Customer Name`,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT 
    Segment,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Segment
ORDER BY Total_Sales DESC;
SELECT 
    YEAR(STR_TO_DATE(`Order Date`, '%m/%d/%Y')) AS Sales_Year,
    SUM(Sales) AS Total_Sales
FROM train
GROUP BY Sales_Year
ORDER BY Sales_Year;