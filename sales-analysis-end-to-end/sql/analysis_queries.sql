-- Customers with no orders
SELECT customers.CustomerName
FROM customers
LEFT JOIN orders
ON customers.CustomerID = orders.CustomerID
WHERE orders.OrderID IS NULL;

-- Revenue by region
SELECT customers.Region, SUM(orders.Amount) AS Revenue
FROM customers
JOIN orders
ON customers.CustomerID = orders.CustomerID
GROUP BY customers.Region;

-- Top customers by spending
SELECT customers.CustomerName, SUM(orders.Amount) AS Total_Spent
FROM customers
JOIN orders
ON customers.CustomerID = orders.CustomerID
GROUP BY customers.CustomerName
ORDER BY Total_Spent DESC;
