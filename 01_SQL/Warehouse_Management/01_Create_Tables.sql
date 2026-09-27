-- Warehouse & Inventory Management System

-- 1. Create Database
CREATE DATABASE WarehouseManagement;
GO

-- Use Database
USE WarehouseManagement;
GO

-- 1. Suppliers Table

CREATE TABLE Suppliers (
    SupplierID INT IDENTITY(1,1) PRIMARY KEY,
    SupplierName VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100),
    City VARCHAR(50)
);
GO

-- 2. Products Table

CREATE TABLE Products (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    UnitPrice DECIMAL(10,2) NOT NULL,
    SupplierID INT,

    CONSTRAINT FK_Products_Suppliers
        FOREIGN KEY (SupplierID)
        REFERENCES Suppliers(SupplierID)
);
GO

-- 3. Warehouses Table

CREATE TABLE Warehouses (
    WarehouseID INT IDENTITY(1,1) PRIMARY KEY,
    WarehouseName VARCHAR(100) NOT NULL,
    City VARCHAR(50),
    Capacity INT
);
GO

-- 4. Inventory Table

CREATE TABLE Inventory (
    WarehouseID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    ReorderLevel INT NOT NULL,

    CONSTRAINT PK_Inventory
        PRIMARY KEY (WarehouseID, ProductID),

    CONSTRAINT FK_Inventory_Warehouses
        FOREIGN KEY (WarehouseID)
        REFERENCES Warehouses(WarehouseID),

    CONSTRAINT FK_Inventory_Products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);
GO

-- 5. Customers Table

CREATE TABLE Customers (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100),
    City VARCHAR(50)
);
GO

-- 6. Orders Table

CREATE TABLE Orders (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    Status VARCHAR(30) NOT NULL,

    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerID)
        REFERENCES Customers(CustomerID)
);
GO

-- 7. OrderDetails Table

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10,2) NOT NULL,

    CONSTRAINT PK_OrderDetails
        PRIMARY KEY (OrderID, ProductID),

    CONSTRAINT FK_OrderDetails_Orders
        FOREIGN KEY (OrderID)
        REFERENCES Orders(OrderID),

    CONSTRAINT FK_OrderDetails_Products
        FOREIGN KEY (ProductID)
        REFERENCES Products(ProductID)
);
GO


-- Done

SELECT 'Database and Tables Created Successfully!' AS Message;
GO