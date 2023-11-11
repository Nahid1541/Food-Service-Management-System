/*
					SQL Project Name : Food Service Management System (FSMS)
							    Trainee Name : Md. Touhidul Islam
						    	  Trainee ID : 1279323      
								Batch ID : WADA/PNTL-A/56/01 

 --------------------------------------------------------------------------------

Table of Contents: DDL
			=> SECTION 01: Created a Database [TCMS]
			=> SECTION 02: Created Appropriate Tables with column definition related to the project
			=> SECTION 03: ALTER, DROP AND MODIFY TABLES & COLUMNS
			=> SECTION 04: CREATE CLUSTERED AND NONCLUSTERED INDEX
			=> SECTION 05: CREATE SEQUENCE & ALTER SEQUENCE
			=> SECTION 06: CREATE A VIEW & ALTER VIEW
			=> SECTION 07: CREATE STORED PROCEDURE & ALTER STORED PROCEDURE
			=> SECTION 08: CREATE FUNCTION(SCALAR, SIMPLE TABLE VALUED, MULTISTATEMENT TABLE VALUED) & ALTER FUNCTION
			=> SECTION 09: CREATE TRIGGER (FOR/AFTER TRIGGER)
			=> SECTION 10: CREATE TRIGGER (INSTEAD OF TRIGGER)
*/

/*
==============================  SECTION 01  ==============================
					CREATE DATABASE WITH ATTRIBUTES
==========================================================================
*/
CREATE DATABASE FSMS_DB
ON
(
	name = 'FSMS_data',
	filename = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FSMS_data.mdf',
	size = 5MB,
	maxsize = 50MB,
	filegrowth = 5%
)
LOG ON
(
	name = 'FSMS_log',
	filename = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FSMS_log.ldf',
	size = 8MB,
	maxsize = 40MB,
	filegrowth = 5MB
)
GO
USE FSMS_DB
GO
/*
==============================  SECTION 02  ==============================
		          CREATE TABLES WITH COLUMN DEFINITION 
==========================================================================
*/
-------------- Table with IDENTITY, PRIMARY KEY, FOREIGN KEY, CHECK CONSTRAINT & nullability CONSTRAINT. -----------------

CREATE TABLE Customer 
(
	CustomerID INT IDENTITY PRIMARY KEY, 
	CustomerFirstName NVARCHAR(30) NOT NULL,
	CustomerLastName NVARCHAR(30),
	CustomerAddress VARCHAR(30),
	CustomerCity VARCHAR(30),
	CustomerState VARCHAR(30),
	CustomerGender VARCHAR(20),
	CustomerRegistrationDate DATE,
	CustomersTotalOrder INT,
	CustomersPaymentMethod VARCHAR(30),
	CustomerEmail VARCHAR(40) UNIQUE CONSTRAINT ck_emailCheck CHECK (CustomerEmail LIKE '%@%' ),
	CustomerContactNumber CHAR(20) UNIQUE CHECK(CustomerContactNumber LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)
GO

CREATE TABLE FoodCategory
(
	CategoryID INT PRIMARY KEY,
	CategoryName VARCHAR(50),
    CategoryDescription VARCHAR(250)
)
GO  

CREATE TABLE FoodMenuItems
(
	MenuItemID INT PRIMARY KEY,
	CategoryID INT FOREIGN KEY REFERENCES FoodCategory(CategoryID),
	MenuItemsName VARCHAR(100),
	MenuItemsDescription VARCHAR(250),
	Price MONEY,
	isAvailable BIT DEFAULT 0
)
GO

CREATE TABLE Orders
(
	OrderID INT PRIMARY KEY,
	CustomerID INT FOREIGN KEY REFERENCES Customer(CustomerID),
	MenuItemID INT FOREIGN KEY REFERENCES FoodMenuItems(MenuItemID),
	SupplierID INT FOREIGN KEY REFERENCES Suppliers(SupplierID),
	OrderDate DATE,
	TotalAmount MONEY,
	OrderStatus VARCHAR(30),
	DeliveryAddress VARCHAR(50),
	DeliveryDate DATE,
	DeliveryFee MONEY,
	Discount MONEY
)
GO

CREATE TABLE Suppliers
(
	SupplierID INT PRIMARY KEY,
	SupplierFirstName VARCHAR(30),
	SupplierLastName VARCHAR(30),
	SupplierAddress VARCHAR(30),
	SupplierCity VARCHAR(30),
	SupplierCountry VARCHAR(30),
	SupplierSalary MONEY,
	SupplierEmail VARCHAR(30),
	SupplierGender VARCHAR(20),
	SupplierContactNumber CHAR(20)
)
GO

CREATE TABLE OrderAudit
(
	OrderID INT PRIMARY KEY,
	CustomerID INT,
	OrderDate DATE,
	TotalAmount MONEY,
	OrderStatus VARCHAR(30),
	DeliveryAddress VARCHAR(50),
	DeliveryDate DATE
)
GO

--============== CREATE A SCHEMA ============--

CREATE SCHEMA FSMS
GO
--============== USE SCHEMA IN A TABLE ============--

CREATE TABLE FSMS.tblFoodInfo
(
	FoodId INT,
	FoodName NVARCHAR(100) NULL,
	FoodDescription NVARCHAR(100) NULL
)
GO


/*
==============================  SECTION 03  ==============================
		          ALTER, DROP AND MODIFY TABLES & COLUMNS
==========================================================================
*/

ALTER TABLE Orders
ADD PaymentStatus VARCHAR(30)
GO


ALTER TABLE Orders
DROP COLUMN PaymentStatus;
GO

ALTER TABLE FoodMenuItems
ALTER COLUMN MenuItemsName NVARCHAR(50);
GO

--============== ADD CHECK CONSTRAINT with defining name ============--

ALTER TABLE Suppliers
ADD CONSTRAINT CK_SupplierContactNumber CHECK(SupplierContactNumber  LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
CONSTRAINT CK_SupplierEmail CHECK(email LIKE '%@%' )
GO

--============== DROP COLUMN ============--

ALTER TABLE FoodMenuItems
DROP COLUMN isAvailable
GO

--============== DROP TABLE ============--

DROP TABLE tblFoodInfo
GO

--============== DROP SCHEMA ============--

DROP SCHEMA FSMS
GO

/*
==============================  SECTION 04  ==============================
		          CREATE CLUSTERED AND NONCLUSTERED INDEX
==========================================================================
*/

-- Clustered Index
CREATE CLUSTERED INDEX IX_tblFoodInfo
ON FSMS.tblFoodInfo
(
	FoodId
)
GO

-- Nonclustered Index
CREATE UNIQUE NONCLUSTERED INDEX IX_SuppliersInfo
ON Suppliers
(
	SupplierEmail,
	SupplierContactNumber
)
GO

/*
==============================  SECTION 05  ==============================
					 CREATE SEQUENCE & ALTER SEQUENCE
==========================================================================
*/

CREATE SEQUENCE FoodID
	AS INT
	START WITH 1
	INCREMENT BY 1
	MINVALUE 0
	MAXVALUE 100
	CYCLE
	CACHE 10
GO

--============== ALTER SEQUENCE ============--

ALTER SEQUENCE sequenceID
	RESTART WITH 1
GO

/*
==============================  SECTION 06  ==============================
						CREATE A VIEW & ALTER VIEW
==========================================================================
*/

CREATE VIEW VW_FoodInfo2
AS
SELECT FoodID, FoodName, FoodDescription FROM FSMS.tblFoodInfo
GO

CREATE VIEW VW_FoodInfo
AS 
SELECT CustomerFirstName, CustomerCity, CategoryName, MenuItemsName, Price, OrderDate, OrderStatus  
FROM Customer
JOIN Orders ON Customer.CustomerID = Orders.CustomerID
JOIN FoodMenuItems ON Orders.CustomerID = FoodMenuItems.CategoryID
JOIN FoodCategory ON FoodMenuItems.CategoryID = FoodCategory.CategoryID
GO

SELECT CustomerFirstName, CustomerCity, CategoryName, MenuItemsName, Price, OrderDate, OrderStatus  
FROM VW_FoodInfo 
GO

-- VIEW WITH ENCRYPTION, SCHEMABINDING & WITH CHECK OPTION

CREATE VIEW VW_tblFoodInfo
WITH SCHEMABINDING, ENCRYPTION
AS
SELECT FoodId, FoodName, FoodDescription 
FROM FSMS.tblFoodInfo
WHERE FoodId = 3
WITH CHECK OPTION
GO

--============== ALTER VIEW ============--

ALTER VIEW VW_tblFoodInfo
AS
SELECT FoodId, FoodName, FoodDescription FROM FSMS.tblFoodInfo
GO

/*
==============================  SECTION 07  ==============================
							 STORED PROCEDURE
==========================================================================
*/

--============== STORED PROCEDURE for insert data using parameter ============--

CREATE PROCEDURE sp_InsertSupplierInfo
	@SupplierID INT,
	@SupplierFirstName VARCHAR(30),
	@SupplierLastName VARCHAR(30),
	@SupplierCity VARCHAR(30),
	@SupplierSalary MONEY,
	@SupplierGender VARCHAR(20)
AS
BEGIN
    INSERT INTO Suppliers (SupplierID, SupplierFirstName, SupplierLastName, SupplierCity, SupplierSalary, SupplierGender)
    VALUES (@SupplierID, @SupplierFirstName, @SupplierLastName, @SupplierCity, @SupplierSalary, @SupplierGender)
END
GO


--============== STORED PROCEDURE for insert data with OUTPUT parameter ============--

CREATE PROCEDURE sp_InsertCustomerInfoWithOutParameter
	@CustomerFirstName NVARCHAR(30),
	@CustomerLastName NVARCHAR(30),
    @CustomerCity VARCHAR(30),
	@CustomerGender VARCHAR(20),
	@CustomerEmail VARCHAR(40),
	@CustomerContactNumber CHAR(20),
    @CustomerID INT OUTPUT
AS
BEGIN
    INSERT INTO Customer (CustomerFirstName, CustomerLastName, CustomerCity, CustomerGender, CustomerEmail, CustomerContactNumber)
    VALUES (@CustomerFirstName, @CustomerLastName, @CustomerCity, @CustomerGender, @CustomerEmail, @CustomerContactNumber)
	SELECT @CustomerID = IDENT_CURRENT('Customer')
END
GO	

--============== STORED PROCEDURE for UPDATE data ============--

CREATE PROC spUpdateData @CustomerID INT,
						 @CustomerCity VARCHAR(30)
AS
BEGIN
	UPDATE Customer
	SET CustomerCity = @CustomerCity
	WHERE CustomerID = @CustomerID
END
GO

--============== STORED PROCEDURE for DELETE Table data ============--

CREATE PROC spDeleteData @CustomerID INT
AS
BEGIN
	DELETE FROM Customer
	WHERE CustomerID = @CustomerID
END
GO

--============== ALTER STORED PROCEDURE ============--

ALTER PROC spUpdateData	 @CustomerID INT,
						 @CustomerCity VARCHAR(30),
						 @CustomerEmail VARCHAR(50)
AS
BEGIN
	UPDATE Customer
	SET CustomerCity = @CustomerCity, 
		CustomerEmail = @CustomerEmail
	WHERE CustomerID = @CustomerID
END
GO

--============== STORED PROCEDURE for insert data with OUTPUT parameter ============--

CREATE PROCEDURE sp_InsertCustomerInfoWithReturn
	@CustomerFirstName NVARCHAR(30),
	@CustomerLastName NVARCHAR(30),
    @CustomerCity VARCHAR(30),
	@CustomerGender VARCHAR(20),
	@CustomerEmail VARCHAR(40),
	@CustomerContactNumber CHAR(20)
AS
BEGIN
	DECLARE @CustomerID INT
    INSERT INTO Customer (CustomerFirstName, CustomerLastName, CustomerCity, CustomerGender, CustomerEmail, CustomerContactNumber)
    VALUES (@CustomerFirstName, @CustomerLastName, @CustomerCity, @CustomerGender, @CustomerEmail, @CustomerContactNumber)
	SELECT @CustomerID = IDENT_CURRENT('Customer')
	RETURN @CustomerID
END
GO	

DECLARE @GetID INT
EXEC @GetID = sp_InsertCustomerInfoWithReturn 'Sahin', 'Shah', 'Dhaka', 'Male', 'sahinshah0147@gmail.com', '01852264008'
PRINT @GetID
GO


--============== TRY CATCH IN A STORED PROCEDURE & RAISERROR WITH ERROR NUMBER AND ERROR MESSAGE ============--

CREATE PROCEDURE spRaisError
AS
BEGIN TRY
    INSERT INTO FoodCategory (CategoryID, CategoryName)
    VALUES (1, 'Sizzling Street Food'); -- Duplicate primary key, will cause an error
END TRY
BEGIN CATCH
    -- Handle the error and display an error message
    SELECT 
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_NUMBER() AS ErrorNumber
END CATCH;



/*
==============================  SECTION 08  ==============================
								 FUNCTION
==========================================================================
*/


--============== A SCALAR FUNCTION ============--
--------A SCALAR FUNCTION to get TotalOrderAmount----------

CREATE FUNCTION fnCalculateTotal (
								  @TotalAmount MONEY,
								  @DeliveryFee MONEY
								 )
RETURNS MONEY
AS
BEGIN
	DECLARE @TotalOrderAmount MONEY
	SET @TotalOrderAmount = @TotalAmount + @DeliveryFee
	RETURN @TotalOrderAmount
END
GO

--============== A SIMPLE TABLE VALUED FUNCTION ============--
-- A Inline Table Valued Function to get monthly & yearly total sales using two parameter @year & @month

CREATE FUNCTION fnMonthlyfoodSales(@year INT, @month INT)
RETURNS TABLE
AS
RETURN
(
	SELECT SUM(TotalAmount) AS 'Total Sales Amount',
		   SUM(DeliveryFee) AS 'Total DeliveryFee'
	FROM Orders
	WHERE YEAR(OrderDate) = @year AND MONTH(OrderDate) = @month
)
GO

--============== A MULTISTATEMENT TABLE VALUED FUNCTION ============--

CREATE FUNCTION fnSalesDetails(@year INT, @month INT)
RETURNS @salesDetails TABLE
(
	CustomerID INT,
	TotalAmount MONEY,
	DeliveryFee MONEY,
	Discount MONEY
)
AS
BEGIN
	INSERT INTO @salesDetails
	SELECT CustomerID,
		   SUM(TotalAmount),
		   SUM(TotalAmount + DeliveryFee),
		   SUM(TotalAmount * Discount / 100)
	FROM Orders
	WHERE YEAR(OrderDate) = @year AND MONTH(OrderDate) = @month
	GROUP BY CustomerID
	RETURN
END
GO


--============== ALTER FUNCTION ============--

ALTER FUNCTION fnMonthlyfoodSales(@year INT, @month INT)
RETURNS TABLE
AS
RETURN
(
	SELECT SUM(TotalAmount) AS 'Total Sales Amount',
		   SUM(DeliveryFee) AS 'Total DeliveryFee'
	FROM Orders
	WHERE YEAR(OrderDate) = @year AND MONTH(OrderDate) = @month
)
GO

/*
==============================  SECTION 09  ==============================
							FOR/AFTER TRIGGER
==========================================================================
*/

CREATE TRIGGER trUpdateDelete
ON [FSMS].[tblFoodInfo]
AFTER UPDATE,DELETE
AS
BEGIN
	PRINT 'Update and Delete not possible!!'
	ROLLBACK TRANSACTION
END
GO

-- Create a trigger that inserts a record into the OrderAudit table whenever a new Orders is inserted into the Orders table

CREATE TRIGGER trg_InsertEmployee
ON Orders
FOR INSERT
AS
BEGIN
    INSERT INTO OrderAudit (OrderID, CustomerID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate)
    SELECT OrderID, CustomerID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate
    FROM inserted;
END;
GO

/*
==============================  SECTION 10  ==============================
							INSTEAD OF TRIGGER
==========================================================================
*/

-----INSTEAD OF TRIGGER FOR INSERT DATA

CREATE VIEW vwOrder
AS 
SELECT OrderID, CustomerID, MenuItemID, SupplierID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate, DeliveryFee, Discount 
FROM Orders
GO

CREATE TRIGGER trInsteadInsert
ON vwOrder
INSTEAD OF INSERT
AS
BEGIN
	INSERT INTO Orders (OrderID, CustomerID, MenuItemID, SupplierID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate, DeliveryFee, Discount)
	SELECT OrderID, CustomerID, MenuItemID, SupplierID, OrderDate, TotalAmount, OrderStatus, DeliveryAddress, DeliveryDate, DeliveryFee, Discount
	FROM inserted
END
GO

--------INSTEAD of TRIGGER For Update Data
CREATE VIEW vwFoodItemAndCategory
AS
SELECT MenuItemID, MenuItemsName, CategoryName  
FROM FoodMenuItems
JOIN FoodCategory
ON FoodCategory.CategoryID = FoodMenuItems.CategoryID
GO

CREATE TRIGGER trInsteadofUpdate_vwFoodItemAndCategory
ON vwFoodItemAndCategory
INSTEAD OF UPDATE
AS
BEGIN
	---If MenuItemID is Updated
	IF(UPDATE(MenuItemID))
		BEGIN
			RAISERROR ('MenuItemID cannot be changed', 16, 1)
			RETURN
		END
	----If CategoryName is Updated
	IF(UPDATE(CategoryName))
		BEGIN
			DECLARE @ID INT
			SELECT @ID = CategoryID FROM FoodCategory 
			JOIN inserted
			ON inserted.CategoryName = FoodCategory.CategoryName
		END

	IF(@ID IS NULL)
		BEGIN
			RAISERROR('Invalid Category Name', 16, 1)
			RETURN
		END
		UPDATE FoodMenuItems SET CategoryID = @ID
		FROM inserted
		JOIN FoodMenuItems
		ON FoodMenuItems.MenuItemID = inserted.MenuItemID
END
GO

----------------------------------------------- End -------------------------------------------------------