CREATE TABLE Zepto(
    sku_id  SERIAL PRIMARY KEY,
	Category VARCHAR(120),
	Name VARCHAR(150) NOT NULL,
	Mrp NUMERIC(8,2),
	DiscountPercent NUMERIC(5,2),
	AvailableQuantity INTEGER,
	DiscountSellingPrice NUMERIC(8,2),
	WeightinGMS INTEGER,
	OutofStock BOOLEAN,
	Quantity INTEGER
);

-- Data Exloration 

-- Count of Rows
SELECT COUNT(*) FROM Zepto;

-- SAMPLE DATA
SELECT * FROM Zepto
LIMIT 10;

-- NULL VALUES
SELECT * FROM Zepto 
WHERE name IS NULL
OR
category IS NULL
OR
mrp IS NULL
OR
discountpercent IS NULL
OR
availablequantity IS NULL
OR
weightingms IS NULL
OR
outofstock IS NULL
OR
quantity IS NULL;

-- DIFFERENT PRODUCT CATEGORIES
SELECT DISTINCT category
FROM Zepto
ORDER BY category;

-- PRODUCTS IN STOCK VS OUT OF STOCK
SELECT outofstock,COUNT(sku_id)
FROM Zepto
GROUP BY outofstock;

-- PRODUCT NAMES PRESENT MULTIPLE TIMES
SELECT name,COUNT(sku_id) as "Number of SKUs"
FROM Zepto
GROUP BY name
HAVING COUNT(sku_id)>1
ORDER BY COUNT(sku_id) DESC;

-- DATA CLEANING

-- Products with price=0
SELECT * FROM Zepto
WHERE mrp=0 or discountsellingprice=0;

DELETE FROM Zepto
WHERE mrp=0;

-- CONVERT PAISE INTO RUPEES
UPDATE Zepto
SET mrp=mrp/100.0,
discountsellingprice=discountsellingprice/100.0;

SELECT mrp,discountsellingprice FROM Zepto;


-- BUISNESS INSIGHTS QUERIES
-- Q1. Find the top 10 best value products based on the discount percentage.
SELECT DISTINCT name,mrp,discountpercent
FROM Zepto
ORDER BY discountPercent DESC
LIMIT 10;

-- Q2. What are the Products with High MRP but Out of Stock
SELECT DISTINCT name,mrp
FROM Zepto
Where outofStock =TRUE and mrp>300
ORDER BY mrp DESC

-- Q3. Calculate Estimated Revenue for each category
SELECT category,
SUM(discountSellingPrice * availableQuantity ) AS Total_revenue
FROM Zepto
GROUP BY Category
ORDER BY Total_revenue;

-- Q4. Find all products where MRP is greater than 500 and discount is less than 10%
SELECT DISTINCT name,mrp,discountpercent
FROM Zepto
WHERE mrp > 500 AND discountpercent < 10
ORDER BY mrp DESC , discountpercent DESC;

-- Q5.Identify the top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discountpercent),2) AS avg_discount
FROM Zepto
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

-- Q6.Find the price per gram for products above 100g and sort by best value
SELECT DISTINCT name,weightInGms,discountsellingprice,
ROUND(discountsellingprice/weightingms,2) AS price_per_gram
FROM zepto
WHERE weightingms >=100
ORDER BY price_per_gram;

-- Q7.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name , weightingms,
CASE WHEN weightingms < 1000 THEN 'Low'
     WHEN weightingms < 5000 THEN 'Medium'
	 ELSE 'Bulk'
	 END AS weight_category
FROM Zepto;


-- Q8.What is the Total Inventory Weight Per Category
SELECT category,
SUM(weightingms*availablequantity )AS total_weight
FROM Zepto
GROUP BY category
ORDER BY total_weight;