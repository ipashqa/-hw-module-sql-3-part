
/*
** Copyright Microsoft, Inc. 1994 - 2000
** All Rights Reserved.
*/

SET NOCOUNT ON
GO

USE master
GO

if exists (select * from sysdatabases where name='Northwind')
		drop database Northwind
GO

set quoted_identifier on
GO

/* Set DATEFORMAT so that the date strings are interpreted correctly regardless of
   the default DATEFORMAT on the server.
*/
SET DATEFORMAT mdy
GO

use "Northwind"
GO

if exists (select * from sysobjects where id = object_id('dbo.Employee Sales by Country') and sysstat & 0xf = 4)
	drop procedure "dbo"."Employee Sales by Country"
GO

if exists (select * from sysobjects where id = object_id('dbo.Sales by Year') and sysstat & 0xf = 4)
	drop procedure "dbo"."Sales by Year"
GO

if exists (select * from sysobjects where id = object_id('dbo.Ten Most Expensive Products') and sysstat & 0xf = 4)
	drop procedure "dbo"."Ten Most Expensive Products"
GO

if exists (select * from sysobjects where id = object_id('dbo.Category Sales for 1997') and sysstat & 0xf = 2)
	drop view "dbo"."Category Sales for 1997"
GO

if exists (select * from sysobjects where id = object_id('dbo.Sales by Category') and sysstat & 0xf = 2)
	drop view "dbo"."Sales by Category"
GO

if exists (select * from sysobjects where id = object_id('dbo.Sales Totals by Amount') and sysstat & 0xf = 2)
	drop view "dbo"."Sales Totals by Amount"
GO

if exists (select * from sysobjects where id = object_id('dbo.Summary of Sales by Quarter') and sysstat & 0xf = 2)
	drop view "dbo"."Summary of Sales by Quarter"
GO

if exists (select * from sysobjects where id = object_id('dbo.Summary of Sales by Year') and sysstat & 0xf = 2)
	drop view "dbo"."Summary of Sales by Year"
GO

if exists (select * from sysobjects where id = object_id('dbo.Invoices') and sysstat & 0xf = 2)
	drop view "dbo"."Invoices"
GO

if exists (select * from sysobjects where id = object_id('dbo.Order Details Extended') and sysstat & 0xf = 2)
	drop view "dbo"."Order Details Extended"
GO

if exists (select * from sysobjects where id = object_id('dbo.Order Subtotals') and sysstat & 0xf = 2)
	drop view "dbo"."Order Subtotals"
GO

if exists (select * from sysobjects where id = object_id('dbo.Product Sales for 1997') and sysstat & 0xf = 2)
	drop view "dbo"."Product Sales for 1997"
GO

if exists (select * from sysobjects where id = object_id('dbo.Alphabetical list of products') and sysstat & 0xf = 2)
	drop view "dbo"."Alphabetical list of products"
GO

if exists (select * from sysobjects where id = object_id('dbo.Current Product List') and sysstat & 0xf = 2)
	drop view "dbo"."Current Product List"
GO

if exists (select * from sysobjects where id = object_id('dbo.Orders Qry') and sysstat & 0xf = 2)
	drop view "dbo"."Orders Qry"
GO

if exists (select * from sysobjects where id = object_id('dbo.Products Above Average Price') and sysstat & 0xf = 2)
	drop view "dbo"."Products Above Average Price"
GO

if exists (select * from sysobjects where id = object_id('dbo.Products by Category') and sysstat & 0xf = 2)
	drop view "dbo"."Products by Category"
GO

if exists (select * from sysobjects where id = object_id('dbo.Quarterly Orders') and sysstat & 0xf = 2)
	drop view "dbo"."Quarterly Orders"
GO

if exists (select * from sysobjects where id = object_id('dbo.Customer and Suppliers by City') and sysstat & 0xf = 2)
	drop view "dbo"."Customer and Suppliers by City"
GO

if exists (select * from sysobjects where id = object_id('dbo.Order Details') and sysstat & 0xf = 3)
	drop table "dbo"."Order Details"
GO

if exists (select * from sysobjects where id = object_id('dbo.Orders') and sysstat & 0xf = 3)
	drop table "dbo"."Orders"
GO

if exists (select * from sysobjects where id = object_id('dbo.Products') and sysstat & 0xf = 3)
	drop table "dbo"."Products"
GO

if exists (select * from sysobjects where id = object_id('dbo.Categories') and sysstat & 0xf = 3)
	drop table "dbo"."Categories"
GO

if exists (select * from sysobjects where id = object_id('dbo.Customers') and sysstat & 0xf = 3)
	drop table "dbo"."Customers"
GO

if exists (select * from sysobjects where id = object_id('dbo.Shippers') and sysstat & 0xf = 3)
	drop table "dbo"."Shippers"
GO

if exists (select * from sysobjects where id = object_id('dbo.Suppliers') and sysstat & 0xf = 3)
	drop table "dbo"."Suppliers"
GO

if exists (select * from sysobjects where id = object_id('dbo.Employees') and sysstat & 0xf = 3)
	drop table "dbo"."Employees"
GO


DECLARE @device_directory NVARCHAR(520)
SELECT @device_directory = SUBSTRING(filename, 1, CHARINDEX(N'master.mdf', LOWER(filename)) - 1)
FROM master.dbo.sysaltfiles WHERE dbid = 1 AND fileid = 1

EXECUTE (N'CREATE DATABASE Northwind
  ON PRIMARY (NAME = N''Northwind'', FILENAME = N''' + @device_directory + N'northwnd.mdf'')
  LOG ON (NAME = N''Northwind_log'',  FILENAME = N''' + @device_directory + N'northwnd.ldf'')')


GO

/*
** Copyright Microsoft, Inc. 1994 - 2000
** All Rights Reserved.
*/

SET NOCOUNT ON
GO

USE master
GO

if exists (select * from sysdatabases where name='Northwind')
		drop database Northwind
GO

set quoted_identifier on
GO

/* Set DATEFORMAT so that the date strings are interpreted correctly regardless of
   the default DATEFORMAT on the server.
*/
SET DATEFORMAT mdy
GO

use "Northwind"
GO

if exists (select * from sysobjects where id = object_id('dbo.Employee Sales by Country') and sysstat & 0xf = 4)
	drop procedure "dbo"."Employee Sales by Country"
GO

if exists (select * from sysobjects where id = object_id('dbo.Sales by Year') and sysstat & 0xf = 4)
	drop procedure "dbo"."Sales by Year"
GO

if exists (select * from sysobjects where id = object_id('dbo.Ten Most Expensive Products') and sysstat & 0xf = 4)
	drop procedure "dbo"."Ten Most Expensive Products"
GO

if exists (select * from sysobjects where id = object_id('dbo.Category Sales for 1997') and sysstat & 0xf = 2)
	drop view "dbo"."Category Sales for 1997"
GO

if exists (select * from sysobjects where id = object_id('dbo.Sales by Category') and sysstat & 0xf = 2)
	drop view "dbo"."Sales by Category"
GO

if exists (select * from sysobjects where id = object_id('dbo.Sales Totals by Amount') and sysstat & 0xf = 2)
	drop view "dbo"."Sales Totals by Amount"
GO

if exists (select * from sysobjects where id = object_id('dbo.Summary of Sales by Quarter') and sysstat & 0xf = 2)
	drop view "dbo"."Summary of Sales by Quarter"
GO

if exists (select * from sysobjects where id = object_id('dbo.Summary of Sales by Year') and sysstat & 0xf = 2)
	drop view "dbo"."Summary of Sales by Year"
GO

if exists (select * from sysobjects where id = object_id('dbo.Invoices') and sysstat & 0xf = 2)
	drop view "dbo"."Invoices"
GO

if exists (select * from sysobjects where id = object_id('dbo.Order Details Extended') and sysstat & 0xf = 2)
	drop view "dbo"."Order Details Extended"
GO

if exists (select * from sysobjects where id = object_id('dbo.Order Subtotals') and sysstat & 0xf = 2)
	drop view "dbo"."Order Subtotals"
GO

if exists (select * from sysobjects where id = object_id('dbo.Product Sales for 1997') and sysstat & 0xf = 2)
	drop view "dbo"."Product Sales for 1997"
GO

if exists (select * from sysobjects where id = object_id('dbo.Alphabetical list of products') and sysstat & 0xf = 2)
	drop view "dbo"."Alphabetical list of products"
GO

if exists (select * from sysobjects where id = object_id('dbo.Current Product List') and sysstat & 0xf = 2)
	drop view "dbo"."Current Product List"
GO

if exists (select * from sysobjects where id = object_id('dbo.Orders Qry') and sysstat & 0xf = 2)
	drop view "dbo"."Orders Qry"
GO

if exists (select * from sysobjects where id = object_id('dbo.Products Above Average Price') and sysstat & 0xf = 2)
	drop view "dbo"."Products Above Average Price"
GO

if exists (select * from sysobjects where id = object_id('dbo.Products by Category') and sysstat & 0xf = 2)
	drop view "dbo"."Products by Category"
GO

if exists (select * from sysobjects where id = object_id('dbo.Quarterly Orders') and sysstat & 0xf = 2)
	drop view "dbo"."Quarterly Orders"
GO

if exists (select * from sysobjects where id = object_id('dbo.Customer and Suppliers by City') and sysstat & 0xf = 2)
	drop view "dbo"."Customer and Suppliers by City"
GO

if exists (select * from sysobjects where id = object_id('dbo.Order Details') and sysstat & 0xf = 3)
	drop table "dbo"."Order Details"
GO

if exists (select * from sysobjects where id = object_id('dbo.Orders') and sysstat & 0xf = 3)
	drop table "dbo"."Orders"
GO

if exists (select * from sysobjects where id = object_id('dbo.Products') and sysstat & 0xf = 3)
	drop table "dbo"."Products"
GO

if exists (select * from sysobjects where id = object_id('dbo.Categories') and sysstat & 0xf = 3)
	drop table "dbo"."Categories"
GO

if exists (select * from sysobjects where id = object_id('dbo.Customers') and sysstat & 0xf = 3)
	drop table "dbo"."Customers"
GO

if exists (select * from sysobjects where id = object_id('dbo.Shippers') and sysstat & 0xf = 3)
	drop table "dbo"."Shippers"
GO

if exists (select * from sysobjects where id = object_id('dbo.Suppliers') and sysstat & 0xf = 3)
	drop table "dbo"."Suppliers"
GO

if exists (select * from sysobjects where id = object_id('dbo.Employees') and sysstat & 0xf = 3)
	drop table "dbo"."Employees"
GO
/*
** Copyright Microsoft, Inc. 1994 - 2000
** All Rights Reserved.
*/

SET NOCOUNT ON
GO

USE master
GO

if exists (select * from sysdatabases where name='Northwind')
		drop database Northwind
GO

set quoted_identifier on
GO

/* Set DATEFORMAT so that the date strings are interpreted correctly regardless of
   the default DATEFORMAT on the server.
*/
SET DATEFORMAT mdy
GO

use "Northwind"
GO

if exists (select * from sysobjects where id = object_id('dbo.Employee Sales by Country') and sysstat & 0xf = 4)
	drop procedure "dbo"."Employee Sales by Country"
GO

if exists (select * from sysobjects where id = object_id('dbo.Sales by Year') and sysstat & 0xf = 4)
	drop procedure "dbo"."Sales by Year"
GO

if exists (select * from sysobjects where id = object_id('dbo.Ten Most Expensive Products') and sysstat & 0xf = 4)
	drop procedure "dbo"."Ten Most Expensive Products"
GO

if exists (select * from sysobjects where id = object_id('dbo.Category Sales for 1997') and sysstat & 0xf = 2)
	drop view "dbo"."Category Sales for 1997"
GO

if exists (select * from sysobjects where id = object_id('dbo.Sales by Category') and sysstat & 0xf = 2)
	drop view "dbo"."Sales by Category"
GO

if exists (select * from sysobjects where id = object_id('dbo.Sales Totals by Amount') and sysstat & 0xf = 2)
	drop view "dbo"."Sales Totals by Amount"
GO

if exists (select * from sysobjects where id = object_id('dbo.Summary of Sales by Quarter') and sysstat & 0xf = 2)
	drop view "dbo"."Summary of Sales by Quarter"
GO

if exists (select * from sysobjects where id = object_id('dbo.Summary of Sales by Year') and sysstat & 0xf = 2)
	drop view "dbo"."Summary of Sales by Year"
GO

if exists (select * from sysobjects where id = object_id('dbo.Invoices') and sysstat & 0xf = 2)
	drop view "dbo"."Invoices"
GO

if exists (select * from sysobjects where id = object_id('dbo.Order Details Extended') and sysstat & 0xf = 2)
	drop view "dbo"."Order Details Extended"
GO

if exists (select * from sysobjects where id = object_id('dbo.Order Subtotals') and sysstat & 0xf = 2)
	drop view "dbo"."Order Subtotals"
GO

if exists (select * from sysobjects where id = object_id('dbo.Product Sales for 1997') and sysstat & 0xf = 2)
	drop view "dbo"."Product Sales for 1997"
GO

if exists (select * from sysobjects where id = object_id('dbo.Alphabetical list of products') and sysstat & 0xf = 2)
	drop view "dbo"."Alphabetical list of products"
GO

if exists (select * from sysobjects where id = object_id('dbo.Current Product List') and sysstat & 0xf = 2)
	drop view "dbo"."Current Product List"
GO

if exists (select * from sysobjects where id = object_id('dbo.Orders Qry') and sysstat & 0xf = 2)
	drop view "dbo"."Orders Qry"
GO

if exists (select * from sysobjects where id = object_id('dbo.Products Above Average Price') and sysstat & 0xf = 2)
	drop view "dbo"."Products Above Average Price"
GO

if exists (select * from sysobjects where id = object_id('dbo.Products by Category') and sysstat & 0xf = 2)
	drop view "dbo"."Products by Category"
GO

if exists (select * from sysobjects where id = object_id('dbo.Quarterly Orders') and sysstat & 0xf = 2)
	drop view "dbo"."Quarterly Orders"
GO

if exists (select * from sysobjects where id = object_id('dbo.Customer and Suppliers by City') and sysstat & 0xf = 2)
	drop view "dbo"."Customer and Suppliers by City"
GO

if exists (select * from sysobjects where id = object_id('dbo.Order Details') and sysstat & 0xf = 3)
	drop table "dbo"."Order Details"
GO

if exists (select * from sysobjects where id = object_id('dbo.Orders') and sysstat & 0xf = 3)
	drop table "dbo"."Orders"
GO

if exists (select * from sysobjects where id = object_id('dbo.Products') and sysstat & 0xf = 3)
	drop table "dbo"."Products"
GO

if exists (select * from sysobjects where id = object_id('dbo.Categories') and sysstat & 0xf = 3)
	drop table "dbo"."Categories"
GO

if exists (select * from sysobjects where id = object_id('dbo.Customers') and sysstat & 0xf = 3)
	drop table "dbo"."Customers"
GO

if exists (select * from sysobjects where id = object_id('dbo.Shippers') and sysstat & 0xf = 3)
	drop table "dbo"."Shippers"
GO

if exists (select * from sysobjects where id = object_id('dbo.Suppliers') and sysstat & 0xf = 3)
	drop table "dbo"."Suppliers"
GO

if exists (select * from sysobjects where id = object_id('dbo.Employees') and sysstat & 0xf = 3)
	drop table "dbo"."Employees"