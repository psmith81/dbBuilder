CREATE TABLE [dbo].[Accounts]
(
	Id					INT IDENTITY	NOT NULL,
	HouseholdId			INT				NOT NULL,
	Name				NVARCHAR(256)	NOT NULL,
	Balance				MONEY 			NOT NULL,
	ReconciledBalance	MONEY			NOT NULL
)
GO

ALTER TABLE [dbo].[Accounts]
ADD CONSTRAINT PK_Accounts 
PRIMARY KEY CLUSTERED (Id)
GO

CREATE INDEX IDX_Accounts
ON [dbo].[Accounts] (Id)
GO

ALTER TABLE [dbo].[Accounts]
WITH CHECK ADD CONSTRAINT FK_Accounts_HouseHold
FOREIGN KEY (HouseholdId) REFERENCES [Security].[Households] ([Id])
GO

AUTOPROC Select,Insert,Update,Delete [dbo].[Accounts]