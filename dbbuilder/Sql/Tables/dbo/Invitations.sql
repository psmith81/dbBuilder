CREATE TABLE [dbo].[Invitations]
(
	Id			INT IDENTITY	NOT NULL,
	FromUserId	INT				NOT NULL,
	ToEmail		NVARCHAR(256)	NOT NULL
)
GO	

ALTER TABLE [dbo].[Invitations]
ADD CONSTRAINT PK_Invitations 
PRIMARY KEY CLUSTERED (Id)
GO

CREATE INDEX IDX_Invitations
ON [dbo].[Invitations] (Id)
GO

ALTER TABLE [dbo].[Invitations]
WITH CHECK ADD CONSTRAINT FK_Invitations_Users
FOREIGN KEY (FromUserId) REFERENCES [Security].[Users] ([Id])
GO

AUTOPROC Select,Insert,Update,Delete [dbo].[Invitations]