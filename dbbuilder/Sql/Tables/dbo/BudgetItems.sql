CREATE TABLE [dbo].[BudgetItems]
(
	Id				INT IDENTITY	NOT NULL,
	HouseholdId		INT				NOT NULL,
	CategoryId		INT				NOT NULL,
	Amount			MONEY			NOT NULL
)
GO

ALTER TABLE [dbo].[BudgetItems]
ADD CONSTRAINT PK_BudgetItems 
PRIMARY KEY CLUSTERED (Id)
GO

CREATE INDEX IDX_BudgetItems
ON [dbo].[BudgetItems] (Id)
GO

ALTER TABLE [dbo].[BudgetItems]
WITH CHECK ADD CONSTRAINT FK_BudgetItems_Households
FOREIGN KEY (HouseholdId) REFERENCES [Security].[Households] ([Id])
GO

ALTER TABLE [dbo].[BudgetItems]
WITH CHECK ADD CONSTRAINT FK_BudgetItems_Categories
FOREIGN KEY (CategoryId) REFERENCES [dbo].[Categories] ([Id])
GO

AUTOPROC Select,Insert,Update,Delete [dbo].[BudgetItems]