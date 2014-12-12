CREATE TABLE [dbo].[Transactions]
(
	Id					INT IDENTITY		NOT NULL,
	AccountId			INT					NOT NULL,
	Amount				MONEY				NOT NULL,
	AbsAmount			MONEY				NOT NULL,
	ReconciledAmount	MONEY				NOT NULL,
	AbsReconciledAmount MONEY				NOT NULL,
	[Date]				DATETIMEOFFSET(7)	NOT NUll,
	[Description]		NVARCHAR(MAX)		NOT NULL,
	Updated				DATETIMEOFFSET(7)	NOT NULL,
	UpdatedByUserId		INT					NOT NULL,
	CategoryId			INT					NOT NULL
)
GO	

ALTER TABLE [dbo].[Transactions]
ADD CONSTRAINT PK_Transactions 
PRIMARY KEY CLUSTERED (Id)
GO

CREATE INDEX IDX_Transactions
ON [dbo].[Transactions] (Id)
GO

ALTER TABLE [dbo].[Transactions]
WITH CHECK ADD CONSTRAINT FK_Transactions_Accounts
FOREIGN KEY (AccountId) REFERENCES [dbo].[Accounts] ([Id])
GO

ALTER TABLE [dbo].[Transactions]
WITH CHECK ADD CONSTRAINT FK_Transactions_Users
FOREIGN KEY (UpdatedByUserId) REFERENCES [Security].[Users] ([Id])
GO

ALTER TABLE [dbo].[Transactions]
WITH CHECK ADD CONSTRAINT FK_Transactions_Categories
FOREIGN KEY (CategoryId) REFERENCES [dbo].[Categories] ([Id])
GO

AUTOPROC Select,Insert,Update,Delete [dbo].[Transactions]