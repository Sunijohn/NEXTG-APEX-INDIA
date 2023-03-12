USE [AdventureWorks2017]
GO
SELECT *
FROM [Sales].[SalesOrderDetail]

--Yearly sales 

USE [AdventureWorks2017]
GO

CREATE PROCEDURE YEARLY
AS
SELECT YEAR(ModifiedDate) AS YEAR,SUM(LineTotal) AS SALES,ProductID
FROM [Sales].[SalesOrderDetail]
GROUP BY YEAR(ModifiedDate),ProductID
ORDER BY YEAR DESC

EXEC YEARLY

--Monthly sales

USE [AdventureWorks2017]
GO

CREATE PROCEDURE MONTLY
AS
SELECT YEAR(Modifieddate) AS YEAR,MONTH(ModifiedDate) AS MONTH,SUM(LineTotal) AS SALES,ProductID
FROM [Sales].[SalesOrderDetail]
GROUP BY YEAR(ModifiedDate),MONTH(ModifiedDate),ProductID
ORDER BY YEAR DESC

EXEC MONTLY

--DAILY sales

USE [AdventureWorks2017]
GO
CREATE PROCEDURE DAYLY
AS
SELECT YEAR(Modifieddate) AS YEAR,MONTH(ModifiedDate) AS MONTH,DAY(ModifiedDate) AS DAY,SUM(LineTotal) AS SALES,ProductID
FROM [Sales].[SalesOrderDetail]
GROUP BY YEAR(ModifiedDate),MONTH(ModifiedDate),DAY(ModifiedDate),ProductID
ORDER BY YEAR DESC

EXEC DAYLY

--DATE RANGE
USE [AdventureWorks2017]
GO
SELECT * 
FROM [Sales].[SalesOrderDetail]
WHERE ModifiedDate BETWEEN '2011-05-31' AND '2011-06-08' 