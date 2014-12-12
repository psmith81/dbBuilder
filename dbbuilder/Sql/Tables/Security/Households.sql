CREATE TABLE [Security].[Households]
(
	Id		INT IDENTITY	NOT NULL,
	Name	NVARCHAR(256)	NOT NULL
)
GO	

ALTER TABLE [Security].[Households]
ADD CONSTRAINT PK_Households 
PRIMARY KEY CLUSTERED (Id)
GO

CREATE INDEX IDX_Households
ON [Security].[Households] (Id)
GO


AUTOPROC Select,Insert,Update,Delete [Security].[Households]