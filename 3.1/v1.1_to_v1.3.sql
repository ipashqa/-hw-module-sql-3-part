USE [Northwind]
GO

IF EXISTS (SELECT * FROM sys.objects AS o WHERE o.object_id = OBJECT_ID('dbo.Region'))
BEGIN
	EXEC sp_rename 'Region', 'Regions'
	PRINT '[dbo.Region] table renamed to [dbo.Regions].'
END

IF NOT EXISTS (SELECT * FROM sys.columns AS c WHERE c.object_id = OBJECT_ID('dbo.Customers') AND c.name = 'AddedDate')
BEGIN
	ALTER TABLE dbo.Customers
		ADD AddedDate DATETIME NULL

	PRINT '[AddedDate] column added to [dbo.Customers] table.'
END