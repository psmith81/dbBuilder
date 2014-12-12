CREATE TABLE [dbo].[test]
(
	Id int IDENTITY,
	Description NVARCHAR(MAX) NOT NULL,
	test NVARCHAR(MAX) NOT NULL
)
GO

ALTER TABLE [dbo].[test]
ADD CONSTRAINT PK_test 
PRIMARY KEY CLUSTERED  (Id)
GO

CREATE UNIQUE INDEX IDX_test  
ON [dbo].[test] (Id)
GO

--ALTER TABLE [dbo].[test]
--WITH CHECK ADD CONSTRAINT FK_TicketsOwerID_AspNetUsers
--FOREIGN KEY (testkey) REFERENCES [dbo].[table] ([Id])

AUTOPROC Select,Insert,Update,Delete [dbo].[test]