
USE WarehouseManagement;
GO

-- 1. SUPPLIERS

INSERT INTO Suppliers (SupplierName, Phone, Email, City)
VALUES
('TechSource Egypt', '01010010001', 'contact@techsource.com', 'Cairo'),
('Nile Electronics', '01010010002', 'sales@nileelectronics.com', 'Giza'),
('Delta Industrial Supplies', '01010010003', 'info@deltaindustrial.com', 'Alexandria'),
('Smart Office Solutions', '01010010004', 'sales@smartoffice.com', 'Cairo'),
('Egyptian Packaging Co.', '01010010005', 'contact@egyptpack.com', 'Giza'),
('Future Tools Egypt', '01010010006', 'sales@futuretools.com', 'Cairo'),
('Middle East Components', '01010010007', 'info@mecomponents.com', 'Alexandria'),
('Modern Home Supplies', '01010010008', 'sales@modernhome.com', 'Mansoura'),
('United Stationery', '01010010009', 'info@unitedstationery.com', 'Tanta'),
('Prime Industrial Equipment', '01010010010', 'contact@primeequipment.com', 'Cairo'),
('Cairo Plastics', '01010010011', 'sales@cairoplastics.com', 'Cairo'),
('Delta Furniture Supply', '01010010012', 'info@deltafurniture.com', 'Mansoura'),
('Alexandria Hardware', '01010010013', 'sales@alexhardware.com', 'Alexandria'),
('National Cleaning Products', '01010010014', 'contact@nationalclean.com', 'Giza'),
('Smart Tech Distribution', '01010010015', 'sales@smarttechdist.com', 'Cairo');
GO


-- 2. PRODUCTS

INSERT INTO Products (ProductName, Category, UnitPrice, SupplierID)
VALUES
('Wireless Keyboard', 'Electronics', 850.00, 1),
('Wireless Mouse', 'Electronics', 450.00, 1),
('USB-C Charger', 'Electronics', 650.00, 2),
('HDMI Cable', 'Electronics', 300.00, 2),
('Bluetooth Headset', 'Electronics', 1200.00, 7),
('Power Bank 10000mAh', 'Electronics', 950.00, 15),
('Laptop Stand', 'Office Equipment', 1100.00, 4),
('USB Flash Drive 64GB', 'Electronics', 500.00, 15),
('Office Chair', 'Furniture', 4500.00, 12),
('Office Desk', 'Furniture', 6500.00, 12),
('Filing Cabinet', 'Furniture', 3800.00, 12),
('Printer Paper A4', 'Stationery', 220.00, 9),
('Ballpoint Pens Pack', 'Stationery', 120.00, 9),
('Notebook A5', 'Stationery', 90.00, 9),
('Stapler', 'Stationery', 180.00, 4),
('Packing Tape', 'Packaging', 75.00, 5),
('Cardboard Boxes Medium', 'Packaging', 35.00, 5),
('Cardboard Boxes Large', 'Packaging', 55.00, 5),
('Bubble Wrap Roll', 'Packaging', 250.00, 5),
('Stretch Film', 'Packaging', 180.00, 11),
('Safety Helmet', 'Safety Equipment', 350.00, 6),
('Safety Gloves', 'Safety Equipment', 150.00, 6),
('Safety Vest', 'Safety Equipment', 250.00, 6),
('Protective Goggles', 'Safety Equipment', 220.00, 6),
('Electric Drill', 'Tools', 2800.00, 10),
('Cordless Screwdriver', 'Tools', 2200.00, 10),
('Toolbox 20 Inch', 'Tools', 1400.00, 13),
('Adjustable Wrench', 'Tools', 450.00, 13),
('Hammer', 'Tools', 350.00, 13),
('Screwdriver Set', 'Tools', 600.00, 13),
('Plastic Storage Bin', 'Storage', 280.00, 11),
('Metal Storage Rack', 'Storage', 3200.00, 10),
('Cleaning Liquid 1L', 'Cleaning', 120.00, 14),
('Floor Cleaner 2L', 'Cleaning', 180.00, 14),
('Glass Cleaner', 'Cleaning', 110.00, 14),
('Hand Sanitizer 500ml', 'Cleaning', 95.00, 14),
('LED Bulb 12W', 'Electrical', 100.00, 2),
('Extension Cord 5m', 'Electrical', 450.00, 2),
('Power Strip 4-Port', 'Electrical', 550.00, 7),
('Electrical Tape', 'Electrical', 60.00, 7),
('Plastic Chair', 'Furniture', 650.00, 8),
('Folding Table', 'Furniture', 1800.00, 8),
('Water Bottle 1L', 'General Supplies', 80.00, 8),
('Coffee Cups Pack', 'General Supplies', 150.00, 8),
('Thermal Printer', 'Office Equipment', 3200.00, 4),
('Barcode Scanner', 'Office Equipment', 2600.00, 15),
('Label Printer', 'Office Equipment', 2900.00, 15),
('Shipping Labels Pack', 'Packaging', 130.00, 5),
('Pallet Wrap', 'Packaging', 210.00, 11),
('Warehouse Cart', 'Warehouse Equipment', 3500.00, 10);
GO


-- 3. WAREHOUSES

INSERT INTO Warehouses (WarehouseName, City, Capacity)
VALUES
('Cairo Central Warehouse', 'Cairo', 10000),
('Giza Distribution Center', 'Giza', 7500),
('Alexandria Warehouse', 'Alexandria', 6000),
('Delta Regional Warehouse', 'Mansoura', 5000),
('Upper Egypt Warehouse', 'Beni Suef', 4000);
GO


-- 4. INVENTORY

INSERT INTO Inventory (WarehouseID, ProductID, Quantity, ReorderLevel)
VALUES
-- Cairo Central Warehouse
(1, 1, 120, 30),
(1, 2, 180, 40),
(1, 3, 95, 25),
(1, 4, 140, 30),
(1, 5, 65, 20),
(1, 6, 80, 20),
(1, 7, 55, 15),
(1, 8, 100, 25),
(1, 9, 35, 10),
(1, 10, 25, 8),
(1, 12, 250, 60),
(1, 16, 400, 100),
(1, 17, 600, 150),
(1, 18, 450, 100),
(1, 25, 30, 8),
(1, 26, 35, 10),
(1, 33, 200, 50),
(1, 37, 300, 70),
(1, 45, 25, 8),
(1, 46, 20, 5),
(1, 47, 18, 5),

-- Giza Distribution Center
(2, 1, 70, 20),
(2, 3, 50, 15),
(2, 5, 40, 10),
(2, 8, 75, 20),
(2, 9, 45, 12),
(2, 11, 20, 5),
(2, 13, 300, 70),
(2, 14, 250, 60),
(2, 15, 80, 20),
(2, 19, 60, 15),
(2, 21, 100, 25),
(2, 22, 150, 40),
(2, 23, 90, 25),
(2, 27, 45, 10),
(2, 31, 120, 30),
(2, 32, 25, 8),
(2, 34, 150, 40),
(2, 36, 200, 50),
(2, 44, 15, 5),

-- Alexandria Warehouse
(3, 2, 90, 20),
(3, 4, 100, 25),
(3, 6, 70, 20),
(3, 7, 40, 10),
(3, 8, 60, 15),
(3, 10, 20, 5),
(3, 12, 180, 40),
(3, 16, 250, 60),
(3, 18, 300, 70),
(3, 20, 120, 30),
(3, 24, 70, 20),
(3, 28, 60, 15),
(3, 29, 80, 20),
(3, 30, 45, 10),
(3, 35, 100, 25),
(3, 38, 50, 15),
(3, 39, 65, 15),
(3, 48, 80, 20),

-- Delta Regional Warehouse
(4, 9, 25, 8),
(4, 10, 18, 5),
(4, 12, 150, 40),
(4, 13, 200, 50),
(4, 14, 180, 40),
(4, 17, 350, 80),
(4, 18, 250, 60),
(4, 21, 70, 20),
(4, 22, 100, 25),
(4, 31, 80, 20),
(4, 33, 120, 30),
(4, 34, 100, 25),
(4, 41, 100, 25),
(4, 42, 30, 8),
(4, 43, 150, 35),

-- Upper Egypt Warehouse
(5, 1, 45, 15),
(5, 2, 60, 15),
(5, 3, 35, 10),
(5, 5, 25, 8),
(5, 6, 30, 10),
(5, 12, 100, 25),
(5, 16, 180, 40),
(5, 17, 250, 60),
(5, 18, 180, 40),
(5, 21, 50, 15),
(5, 22, 80, 20),
(5, 25, 15, 5),
(5, 26, 20, 5),
(5, 33, 90, 20),
(5, 37, 150, 30),
(5, 40, 200, 50),
(5, 45, 12, 4),
(5, 47, 10, 3);
GO


-- 5. CUSTOMERS

INSERT INTO Customers (CustomerName, Phone, Email, City)
VALUES
('Alpha Retail Store', '01120010001', 'orders@alpharetail.com', 'Cairo'),
('Delta Office Supplies', '01120010002', 'purchasing@deltaoffice.com', 'Mansoura'),
('Nile Trading Company', '01120010003', 'orders@niletrading.com', 'Giza'),
('Smart Business Center', '01120010004', 'procurement@smartbusiness.com', 'Cairo'),
('Alexandria Electronics', '01120010005', 'sales@alexelectronics.com', 'Alexandria'),
('Future Market', '01120010006', 'orders@futuremarket.com', 'Giza'),
('Cairo Stationery Shop', '01120010007', 'info@cairostationery.com', 'Cairo'),
('Modern Furniture Store', '01120010008', 'orders@modernfurniture.com', 'Mansoura'),
('United Hardware', '01120010009', 'sales@unitedhardware.com', 'Alexandria'),
('Beni Suef Business Center', '01120010010', 'orders@bsbusiness.com', 'Beni Suef'),
('Prime Retail', '01120010011', 'purchasing@primeretail.com', 'Cairo'),
('Delta Industrial Co.', '01120010012', 'orders@deltaindustrialco.com', 'Tanta'),
('Nile Office Solutions', '01120010013', 'sales@nileoffice.com', 'Giza'),
('Alex Trade', '01120010014', 'orders@alextrade.com', 'Alexandria'),
('Upper Egypt Supplies', '01120010015', 'orders@uesupplies.com', 'Beni Suef'),
('Tech World', '01120010016', 'sales@techworld.com', 'Cairo'),
('Business Hub', '01120010017', 'orders@businesshub.com', 'Giza'),
('Mansoura Market', '01120010018', 'sales@mansouramarket.com', 'Mansoura'),
('Egyptian Tools Store', '01120010019', 'orders@egytools.com', 'Cairo'),
('Green Cleaning Services', '01120010020', 'purchasing@greenclean.com', 'Giza');
GO


-- 6. ORDERS

INSERT INTO Orders (CustomerID, OrderDate, Status)
VALUES
(1, '2026-01-05', 'Delivered'),
(2, '2026-01-08', 'Delivered'),
(3, '2026-01-12', 'Delivered'),
(4, '2026-01-18', 'Delivered'),
(5, '2026-01-25', 'Delivered'),

(6, '2026-02-03', 'Delivered'),
(7, '2026-02-07', 'Delivered'),
(8, '2026-02-11', 'Delivered'),
(9, '2026-02-19', 'Delivered'),
(10, '2026-02-25', 'Delivered'),

(11, '2026-03-02', 'Delivered'),
(12, '2026-03-08', 'Delivered'),
(13, '2026-03-14', 'Delivered'),
(14, '2026-03-20', 'Delivered'),
(15, '2026-03-28', 'Delivered'),

(16, '2026-04-04', 'Delivered'),
(17, '2026-04-10', 'Delivered'),
(18, '2026-04-16', 'Delivered'),
(19, '2026-04-22', 'Delivered'),
(20, '2026-04-29', 'Delivered'),

(1, '2026-05-05', 'Delivered'),
(3, '2026-05-11', 'Delivered'),
(5, '2026-05-18', 'Delivered'),
(7, '2026-05-24', 'Delivered'),
(10, '2026-05-30', 'Delivered'),

(2, '2026-06-04', 'Delivered'),
(4, '2026-06-10', 'Delivered'),
(6, '2026-06-17', 'Delivered'),
(8, '2026-06-23', 'Delivered'),
(12, '2026-06-29', 'Delivered'),

(13, '2026-07-05', 'Delivered'),
(15, '2026-07-11', 'Delivered'),
(16, '2026-07-18', 'Delivered'),
(18, '2026-07-24', 'Shipped'),
(20, '2026-07-30', 'Shipped'),

(1, '2026-08-04', 'Processing'),
(4, '2026-08-09', 'Processing'),
(7, '2026-08-15', 'Pending'),
(10, '2026-08-21', 'Pending'),
(15, '2026-08-28', 'Processing');
GO


-- 7. ORDER DETAILS

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice)
VALUES
-- January
(1, 1, 10, 820.00),
(1, 2, 15, 430.00),
(1, 12, 30, 210.00),

(2, 9, 5, 4400.00),
(2, 10, 3, 6300.00),

(3, 3, 12, 630.00),
(3, 4, 20, 290.00),
(3, 8, 15, 480.00),

(4, 13, 50, 115.00),
(4, 14, 30, 85.00),
(4, 15, 10, 170.00),

(5, 25, 4, 2700.00),
(5, 26, 5, 2100.00),

-- February
(6, 5, 8, 1150.00),
(6, 6, 10, 920.00),
(6, 8, 12, 480.00),

(7, 12, 80, 210.00),
(7, 13, 100, 110.00),

(8, 9, 4, 4400.00),
(8, 11, 3, 3700.00),

(9, 27, 5, 1350.00),
(9, 28, 10, 420.00),
(9, 29, 8, 330.00),

(10, 33, 40, 110.00),
(10, 34, 30, 170.00),
(10, 35, 20, 100.00),

-- March
(11, 1, 15, 820.00),
(11, 2, 20, 430.00),
(11, 7, 5, 1050.00),

(12, 16, 100, 70.00),
(12, 17, 150, 32.00),
(12, 18, 100, 50.00),

(13, 21, 20, 330.00),
(13, 22, 30, 140.00),
(13, 23, 15, 230.00),

(14, 37, 50, 95.00),
(14, 38, 20, 420.00),
(14, 39, 15, 520.00),

(15, 45, 5, 3050.00),
(15, 46, 4, 2500.00),

-- April
(16, 3, 20, 620.00),
(16, 4, 30, 280.00),
(16, 6, 15, 900.00),

(17, 9, 6, 4350.00),
(17, 10, 4, 6200.00),

(18, 12, 100, 205.00),
(18, 14, 50, 82.00),
(18, 15, 15, 165.00),

(19, 25, 3, 2700.00),
(19, 30, 10, 570.00),

(20, 33, 50, 105.00),
(20, 36, 60, 90.00),

-- May
(21, 1, 12, 810.00),
(21, 2, 18, 420.00),
(21, 5, 6, 1150.00),

(22, 16, 120, 68.00),
(22, 18, 80, 48.00),
(22, 19, 10, 235.00),

(23, 9, 4, 4300.00),
(23, 11, 2, 3650.00),

(24, 12, 90, 205.00),
(24, 13, 120, 108.00),
(24, 14, 60, 82.00),

(25, 21, 15, 325.00),
(25, 22, 25, 135.00),

-- June
(26, 3, 15, 610.00),
(26, 4, 25, 275.00),
(26, 8, 20, 470.00),

(27, 7, 10, 1050.00),
(27, 9, 3, 4250.00),

(28, 33, 60, 105.00),
(28, 34, 40, 165.00),
(28, 36, 50, 90.00),

(29, 41, 20, 620.00),
(29, 42, 8, 1750.00),

(30, 25, 5, 2650.00),
(30, 26, 6, 2050.00),
(30, 30, 10, 560.00),

-- July
(31, 1, 20, 800.00),
(31, 2, 25, 415.00),
(31, 8, 15, 460.00),

(32, 12, 100, 200.00),
(32, 17, 200, 30.00),
(32, 18, 150, 48.00),

(33, 5, 10, 1120.00),
(33, 6, 15, 890.00),

(34, 9, 5, 4200.00),
(34, 10, 3, 6100.00),

(35, 45, 4, 3000.00),
(35, 47, 3, 2750.00),

-- August
(36, 1, 10, 810.00),
(36, 2, 15, 420.00),
(36, 3, 8, 620.00),

(37, 12, 60, 205.00),
(37, 13, 80, 110.00),

(38, 5, 5, 1150.00),
(38, 8, 10, 470.00),

(39, 25, 2, 2700.00),
(39, 26, 3, 2050.00),

(40, 33, 30, 110.00),
(40, 34, 25, 165.00),
(40, 35, 15, 100.00);
GO
 
-- CHECK DATA

SELECT 'Suppliers' AS TableName, COUNT(*) AS RecordCount FROM Suppliers
UNION ALL
SELECT 'Products', COUNT(*) FROM Products
UNION ALL
SELECT 'Warehouses', COUNT(*) FROM Warehouses
UNION ALL
SELECT 'Inventory', COUNT(*) FROM Inventory
UNION ALL
SELECT 'Customers', COUNT(*) FROM Customers
UNION ALL
SELECT 'Orders', COUNT(*) FROM Orders
UNION ALL
SELECT 'OrderDetails', COUNT(*) FROM OrderDetails;
GO