CREATE TABLE [dbo].[name]
(
	Id		INT IDENTITY	NOT NULL,
	Name	NVARCHAR(MAX)	NOT NULL
)
GO	

ALTER TABLE [dbo].[name]
ADD CONSTRAINT PK_name 
PRIMARY KEY CLUSTERED (Id)
GO

CREATE INDEX IDX_name
ON [dbo].[name] (Id)
GO

--ALTER TABLE [dbo].[name]
--WITH CHECK ADD CONSTRAINT FK_name_Table2one
--FOREIGN KEY (namekey) REFERENCES [dbo].[table] ([Id])
--GO

AUTOPROC Select,Insert,Update,Delete [dbo].[name]