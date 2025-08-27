CREATE DATABASE E_Commerce;
USE E_Commerce;

CREATE TABLE Customers (
    Customer_Id TEXT,
    First_Name TEXT,
    Last_Name TEXT,
    Email TEXT,
    Phone TEXT,
    Address TEXT,
    City TEXT,
    Country TEXT,
    Registration_Date TEXT
);

CREATE TABLE Orders (
    Order_Id TEXT,
    Customer_Id TEXT,
    Order_Date TEXT,
    Order_Status TEXT,
    Total_Amount TEXT
);

CREATE TABLE Suppliers (
    Supplier_Id TEXT,
    Supplier_Name TEXT,
    Contact_Name TEXT,
    Phone TEXT,
    Address TEXT,
    City TEXT,
    Country TEXT
);

CREATE TABLE Products (
    Product_Id TEXT,
    Product_Name TEXT,
    Category TEXT,
    Price TEXT,
    Stock_Quantity TEXT,
    Supplier_Id TEXT
);

CREATE TABLE Order_Items (
    Order_Item_Id TEXT,
    Order_Id TEXT,
    Product_Id TEXT,
    Quantity TEXT,
    Unit_Price TEXT
);

CREATE TABLE Payments (
    Payment_Id TEXT,
    Order_Id TEXT,
    Payment_Date TEXT,
    Payment_Method TEXT,
    Amount TEXT
);

CREATE TABLE Inventory (
    Inventory_Id TEXT,
    Product_Id TEXT,
    Warehouse_Location TEXT,
    Quantity_Available TEXT,
    Last_Updated TEXT
);
