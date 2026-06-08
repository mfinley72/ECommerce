USE EcommerceDB;
GO

SELECT 
    Country,
    COUNT(DISTINCT InvoiceNo) AS Total_Orders,
    COUNT(Quantity) AS Total_Items_Sold,
    ROUND(SUM(Quantity * UnitPrice), 2) AS Total_Revenue
FROM raw_ecommerce_data
WHERE Quantity > 0 AND UnitPrice > 0  -- Filters out test rows or returns
GROUP BY Country
ORDER BY Total_Revenue DESC;

SELECT TOP 10
    CAST(CustomerID AS INT) AS Clean_Customer_ID,
    COUNT(DISTINCT InvoiceNo) AS Visit_Frequency,
    ROUND(SUM(Quantity * UnitPrice), 2) AS Lifetime_Value,
    ROUND(SUM(Quantity * UnitPrice) / COUNT(DISTINCT InvoiceNo), 2) AS Average_Order_Value
FROM raw_ecommerce_data
WHERE CustomerID IS NOT NULL 
  AND Quantity > 0
GROUP BY CustomerID
ORDER BY Lifetime_Value DESC;

SELECT TOP 10
    CAST(CustomerID AS INT) AS Clean_Customer_ID,
    COUNT(DISTINCT InvoiceNo) AS Visit_Frequency,
    ROUND(SUM(Quantity * UnitPrice), 2) AS Lifetime_Value,
    ROUND(SUM(Quantity * UnitPrice) / COUNT(DISTINCT InvoiceNo), 2) AS Average_Order_Value
FROM raw_ecommerce_data
WHERE CustomerID IS NOT NULL 
  AND Quantity > 0
GROUP BY CustomerID
ORDER BY Lifetime_Value DESC;

