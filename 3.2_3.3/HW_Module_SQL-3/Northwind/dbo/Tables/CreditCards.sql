CREATE TABLE [dbo].[CreditCards]
(
	[CardNumber] NVARCHAR(16) NOT NULL PRIMARY KEY, 
    [ExpirationDate] DATE NOT NULL, 
    [CardHolder] NVARCHAR(50) NOT NULL, 
    [EmployeeId] INT NOT NULL, 
    CONSTRAINT [FK_CreditCards_Employees] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employees]([EmployeeID])
)
