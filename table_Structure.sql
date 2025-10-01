USE Sale_DW;
GO
-- Bảng DimProducts
CREATE TABLE DimProducts (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(255),
    Category NVARCHAR(100),
    Brand NVARCHAR(100),
    Price DECIMAL(18, 2)
);

-- Bảng DimCustomers
CREATE TABLE DimCustomers (
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(255),
    Gender NVARCHAR(10),
    DateOfBirth DATE,
    City NVARCHAR(100),
    Country NVARCHAR(100)
);

-- Bảng DimStores
CREATE TABLE DimStores (
    StoreID INT PRIMARY KEY,
    StoreName NVARCHAR(255),
    City NVARCHAR(100),
    Country NVARCHAR(100)
);

-- Bảng DimTime
CREATE TABLE DimTime (
    TimeID INT PRIMARY KEY,
    Date DATE,
    Month INT,
    Quarter INT,
    Year INT,
    DayOfWeek NVARCHAR(50)
);
-- Bảng FactSales
CREATE TABLE FactSales (
    SaleID INT PRIMARY KEY,
    ProductID INT FOREIGN KEY REFERENCES DimProducts(ProductID),
    CustomerID INT FOREIGN KEY REFERENCES DimCustomers(CustomerID),
    StoreID INT FOREIGN KEY REFERENCES DimStores(StoreID),
    TimeID INT FOREIGN KEY REFERENCES DimTime(TimeID),
    Quantity INT,
    TotalAmount DECIMAL(18, 2)
);

BACKUP DATABASE [Sale_DW]
TO DISK = 'D:\Downloads\Sale_DW.bak'
WITH FORMAT, MEDIANAME = 'SQLServerBackups', NAME = 'Full Backup of YourDatabaseName';