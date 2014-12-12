CREATE TABLE [dbo].[Categories]
(
	Id			INT IDENTITY	NOT NULL,
	HouseholdId	INT				NULL,
	Name		NVARCHAR(256)	NOT NULL
)
GO	

ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT PK_Categories 
PRIMARY KEY CLUSTERED (Id)
GO

CREATE INDEX IDX_Categories
ON [dbo].[Categories] (Id)
GO

ALTER TABLE [dbo].[Categories]
WITH CHECK ADD CONSTRAINT FK_Categories_Households
FOREIGN KEY (HouseholdId) REFERENCES [Security].[Households] ([Id])
GO

AUTOPROC Select,Insert,Update,Delete [dbo].[Categories]