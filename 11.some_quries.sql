use cleaned_e_commerce;
SELECT * 
FROM Customers;

-- 2. WHERE Filtering
SELECT Product_Name, Stock_Quantity
FROM Products
WHERE Stock_Quantity < 10;

-- 3. ORDER BY
SELECT Order_Id, Total_Amount
FROM Orders
ORDER BY Total_Amount DESC;

-- 4. JOIN
SELECT o.Order_Id, c.First_Name, c.Last_Name, o.Order_Date
FROM Orders o
JOIN Customers c ON o.Customer_Id = c.Customer_Id;

-- 5. JOIN with Multiple Tables
SELECT oi.Order_Item_Id, p.Product_Name, oi.Quantity, oi.Unit_Price
FROM Order_Items oi
JOIN Products p ON oi.Product_Id = p.Product_Id;

-- 6. GROUP BY + Aggregation
SELECT p.Product_Name, SUM(oi.Quantity * oi.Unit_Price) AS Total_Sales
FROM Order_Items oi
JOIN Products p ON oi.Product_Id = p.Product_Id
GROUP BY p.Product_Name;

-- 7. HAVING
SELECT p.Product_Name, SUM(oi.Quantity * oi.Unit_Price) AS Total_Sales
FROM Order_Items oi
JOIN Products p ON oi.Product_Id = p.Product_Id
GROUP BY p.Product_Name
HAVING SUM(oi.Quantity * oi.Unit_Price) > 500;

-- 8. Subquery
SELECT Customer_Id, First_Name, Last_Name
FROM Customers
WHERE Customer_Id IN (
    SELECT Customer_Id
    FROM Orders
    GROUP BY Customer_Id
    HAVING SUM(Total_Amount) > 1000
);
