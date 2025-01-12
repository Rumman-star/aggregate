-- Step 1: Create a table
CREATE TABLE IF NOT EXISTS Sales (
    SaleID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10, 2),
    SaleDate DATE
);

-- Step 2: Insert sample data
INSERT INTO Sales (ProductName, Category, Quantity, Price, SaleDate) VALUES
('Laptop', 'Electronics', 5, 800.00, '2025-01-01'),
('Mouse', 'Electronics', 10, 20.00, '2025-01-02'),
('Keyboard', 'Electronics', 7, 30.00, '2025-01-03'),
('Chair', 'Furniture', 3, 150.00, '2025-01-01'),
('Desk', 'Furniture', 2, 250.00, '2025-01-04'),
('Notebook', 'Stationery', 50, 3.00, '2025-01-02'),
('Pen', 'Stationery', 100, 1.00, '2025-01-03');

-- Step 3: Use aggregate functions
-- Total sales (quantity) for each category
SELECT Category, SUM(Quantity) AS TotalQuantity
FROM Sales
GROUP BY Category;

-- Average price of products in each category
SELECT Category, AVG(Price) AS AveragePrice
FROM Sales
GROUP BY Category;

-- Maximum price of any product in the table
SELECT MAX(Price) AS MaxPrice
FROM Sales;

-- Total revenue (Quantity * Price) for each category
SELECT Category, SUM(Quantity * Price) AS TotalRevenue
FROM Sales
GROUP BY Category;

-- Number of distinct products sold
SELECT COUNT(DISTINCT ProductName) AS DistinctProducts
FROM Sales;

-- Minimum price of any product
SELECT MIN(Price) AS MinPrice
FROM Sales;

-- Count of sales records in the table
SELECT COUNT(*) AS TotalSalesRecords
FROM Sales;
