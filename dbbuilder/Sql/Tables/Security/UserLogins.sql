CREATE TABLE [Security].[UserLogins]
(
	UserId			INT				NOT NULL,
	LoginProvider	NVARCHAR(128)	NOT NULL,
	ProviderKey		NVARCHAR(128)	NOT NULL
)
GO	

ALTER TABLE [Security].[UserLogins]
ADD CONSTRAINT PK_UserLogins 
PRIMARY KEY CLUSTERED (UserId)
GO

--CREATE INDEX IDX_UserLogins
--ON [Security].[UserLogins] (Id)
--GO

ALTER TABLE [Security].[UserLogins]
WITH CHECK ADD CONSTRAINT FK_UserLogins_Users
FOREIGN KEY (UserId) REFERENCES [Security].[Users] ([Id])
GO

AUTOPROC Select,Insert,Update,Delete [Security].[UserLogins]