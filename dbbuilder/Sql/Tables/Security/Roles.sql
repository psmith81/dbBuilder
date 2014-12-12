CREATE TABLE [Security].[Roles]
(
	Id		INT 			NOT NULL,
	Name	NVARCHAR(256)	NOT NULL
)
GO	

ALTER TABLE [Security].[Roles]
ADD CONSTRAINT PK_Roles 
PRIMARY KEY CLUSTERED (Id)
GO

CREATE INDEX IDX_Roles
ON [Security].[Roles] (Id)
GO

--ALTER TABLE [Security].[Roles]
--WITH CHECK ADD CONSTRAINT FK_Roles_Table2one
--FOREIGN KEY (Roleskey) REFERENCES [Security].[table] ([Id])
--GO

AUTOPROC Select,Insert,Update,Delete [Security].[Roles]