CREATE DATABASE Practise_Lab;

USE Practise_Lab;

SELECT *
FROM SampleSuperstore;

--Select all the record where Region = South
SELECT *
FROM SampleSuperstore
WHERE Region = 'South';

--How many records South region has? Set column name as 'South_Region'
SELECT COUNT (Region) as South_Region
FROM SampleSuperstore
WHERE Region = 'South';

-- Count of sales of all Regions
SELECT COUNT (Sales) as Count_of_sales_by_region, Region ---included the region column for clarity
FROM SampleSuperstore
GROUP BY Region;

-- Count of sales of all regions by category 
SELECT COUNT (Sales) as Count_of_sales_by_category, region, Category ---included the category column for clarity
FROM SampleSuperstore
GROUP BY Category, Region;

--Sort the sales in DESC order
SELECT *
FROM SampleSuperstore
ORDER BY Sales DESC;

--Display the category and subcategory where profit is negative
SELECT Category, Subcategory, Profit ---included the profit column for clarity
FROM SampleSuperstore
WHERE profit < 0;

-- Total Sales of all the states
SELECT sum(Sales) as total_sales, State
FROM SampleSuperstore
GROUP BY State;

--Which State has the most number of negative profit
SELECT Top 1 min(Profit) as lowest_profit_by_state, state
FROM SampleSuperstore
GROUP BY State;

--Which Region has the most number of negative profit
SELECT TOP 1 min(Profit) as lowest_profit_by_region, Region
FROM SampleSuperstore
GROUP BY Region
ORDER BY lowest_profit_by_region;

--Select catagories whose profit lies between 50, 100
SELECT Category, Profit
FROM SampleSuperstore
WHERE Profit BETWEEN 50 and 100;

-- Display the count of each subcategory with profit between 50 and 100
SELECT COUNT (Category) as count_of_subcategories, Subcategory
FROM SampleSuperstore
WHERE Profit BETWEEN 50 and 100
GROUP BY Subcategory;

-- DISPLAY THE COUNT OF EACH SUBCATEGORY WITH PROFIT BETWEEN 50 AND 100 for each country
SELECT COUNT (Category) as count_of_subcategories, Subcategory, country
FROM SampleSuperstore
WHERE Profit BETWEEN 50 and 100
GROUP BY Subcategory, country;

--Which country has on average higher quantities of dairy and snacks products
SELECT TOP 2 Country, Category, AVG(Quantity) AS max_avg_salary
FROM SampleSuperstore
GROUP BY Country, Category
ORDER BY AVG(Quantity) DESC;

