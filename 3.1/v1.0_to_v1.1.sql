USE [Northwind]
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('dbo.CreditCards'))
BEGIN
	CREATE TABLE dbo.CreditCards(
		CardNumber NVARCHAR(16) NOT NULL,
		ExpirationDate DATE NOT NULL,
		CardHolder NVARCHAR(50) NOT NULL,
		EmployeeID INT NOT NULL,
		CONSTRAINT [PK_CreditCards] PRIMARY KEY (CardNumber),
		CONSTRAINT [FK_CreditCards_Employees] FOREIGN KEY (EmployeeID) REFERENCES dbo.Employees (EmployeeID)
	)

	PRINT 'dbo.CreditCards table created.';
END
ELSE BEGIN
	PRINT 'dbo.CreditCards table already exists.';
END