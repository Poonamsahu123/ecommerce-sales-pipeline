 BASIC QUERIES

 1. View Full Data
	SELECT * 
	FROM dbo.sales_data;

 2. Total Sales
	SELECT 
   	 SUM(CAST(unit_price AS FLOAT) * CAST(quantity AS INT)) AS total_sales
	FROM dbo.sales_data;

 3. Total Orders
	SELECT 
        COUNT(*) AS total_orders
        FROM dbo.sales_data;

 4. Average Order Value
	SELECT 
    	AVG(CAST(unit_price AS FLOAT) * CAST(quantity AS INT)) AS avg_order_value
	FROM dbo.sales_data;

 5. Sales by City
	SELECT 
    	city,
    	SUM(CAST(unit_price AS FLOAT) * CAST(quantity AS INT)) AS total_sales
	FROM dbo.sales_data
	GROUP BY city
	ORDER BY total_sales DESC;

 6. Sales by Product Line
	SELECT 
    	product_line,
    	SUM(CAST(unit_price AS FLOAT) * CAST(quantity AS INT)) AS total_sales
	FROM dbo.sales_data
	GROUP BY product_line
	ORDER BY total_sales DESC;

 7. Sales by Gender
	SELECT 
	gender,
    	SUM(CAST(unit_price AS FLOAT) * CAST(quantity AS INT)) AS total_sales
	FROM dbo.sales_data
	GROUP BY gender;

8. Top 5 Selling Products
	SELECT TOP 5
    	product_line,
    	SUM(quantity) AS total_quantity
	FROM dbo.sales_data
	GROUP BY product_line
	ORDER BY total_quantity DESC;
