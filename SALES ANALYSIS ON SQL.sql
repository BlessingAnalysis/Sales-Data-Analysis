CREATE DATABASE onsitestudentdb


SELECT * FROM [dbo].[salesdataset]



--MOST PREFERED PAYMENT METHOD
SELECT  [Payment_Method], COUNT([Order_ID]) AS Total_Count 
FROM[dbo].[salesdataset]
GROUP BY[Payment_Method]


--Q2) MOST SELLING PRODUCT BY QUANTITY
SELECT[Product], CAST(SUM([Quantity]) AS DECIMAL(10,2)) AS total_product_by_quauntity
FROM[dbo].[salesdataset]
GROUP BY[Product]
ORDER BY SUM([Quantity]) DESC

--BY REVENUE
SELECT[Product], CAST(SUM(price*quantity) AS DECIMAL(10,2)) AS total_product_by_revenue
FROM[dbo].[salesdataset]
GROUP BY[Product]
ORDER BY SUM(price*quantity) DESC



--Q3)CITY WITH MAXIMUM REVENUE
SELECT[City], CAST(SUM(price*quantity) AS DECIMAL(10,2)) AS revenue_by_city 
FROM[dbo].[salesdataset]
GROUP BY[City]
ORDER BY SUM(price*quantity) DESC

--WHICH MANAGER EARNED MAXIMUM REVENUE
SELECT[Manager], CAST(SUM(price*quantity) AS DECIMAL(10,2)) AS revenue_by_manager 
FROM[dbo].[salesdataset]
GROUP BY[Manager]
ORDER BY SUM(price*quantity) DESC



-- Q4)DATE WISE REVENUE
SELECT[Date],CAST(SUM(price*quantity) AS DECIMAL(10,2)) AS revenue_by_date
FROM[dbo].[salesdataset]
GROUP BY [Date]
ORDER BY SUM(price*quantity) DESC



--Q5)AVERAGE REVENUE
SELECT CAST(AVG(price*quantity) AS DECIMAL(10,2)) AS average_revenue FROM[dbo].[salesdataset]


--Q7)STANDARD DEVIATION OF REVENUE
SELECT CAST(STDEV(price*quantity) AS DECIMAL(10,2)) AS standard_deviation_of_revenue FROM[dbo].[salesdataset]

--STANDARD DEVIATION OF QUANTITY
SELECT CAST(STDEV([Quantity]) AS DECIMAL(10,2)) AS standard_deviation_of_quantity FROM[dbo].[salesdataset]



--Q8)VARIANCE OF REVENUE
SELECT CAST(VAR(price*quantity) AS DECIMAL(10,2)) AS variance_of_revenue FROM[dbo].[salesdataset]

--VARIANCE OF QUANTITY
SELECT CAST(VAR([Quantity]) AS DECIMAL(10,2)) AS variance_of_quantity FROM[dbo].[salesdataset]


--Q10)AVERAGE QUANTIY SOLD FOR EACH PRODUCT
SELECT[Product],CAST(AVG([Quantity]) AS DECIMAL(10,2)) AS avg_quantity_by_product FROM[dbo].[salesdataset]
GROUP BY[Product]
ORDER BY AVG([Quantity])DESC

--AVERAGE REVENUE FOR EACH PRODUCT
SELECT[Product],CAST(AVG(price*quantity) AS DECIMAL(10,2)) AS avg_revenue_by_product FROM[dbo].[salesdataset]
GROUP BY[Product]
ORDER BY AVG(price*quantity) DESC
