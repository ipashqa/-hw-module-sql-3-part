CREATE TABLE [dbo].[CreditCards]
(
	[CardNumber] VARCHAR(16) NOT NULL PRIMARY KEY, 
    [CardHolder] NVARCHAR(50) NOT NULL, 
    [EmployeeId] INT NOT NULL, 
    CONSTRAINT [FK_CreditCards_Employees] FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employees]([EmployeeId])
)
