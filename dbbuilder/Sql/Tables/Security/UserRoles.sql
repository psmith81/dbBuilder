CREATE TABLE [Security].[UserRoles]
(
	UserId	INT		NOT NULL,
	RoleId	INT		NOT NULL
)
GO	

ALTER TABLE [Security].[UserRoles]
ADD CONSTRAINT PK_UserRoles 
PRIMARY KEY CLUSTERED (UserId,RoleId)
GO

--CREATE INDEX IDX_UserRoles
--ON [Security].[UserRoles] (Id)
--GO

ALTER TABLE [Security].[UserRoles]
WITH CHECK ADD CONSTRAINT FK_UserRoles_Users
FOREIGN KEY (UserId) REFERENCES [Security].[Users] ([Id])
GO

ALTER TABLE [Security].[UserRoles]
WITH CHECK ADD CONSTRAINT FK_UserRoles_Roles
FOREIGN KEY (RoleId) REFERENCES [Security].[Roles] ([Id])
GO

AUTOPROC Select,Insert,Update,Delete [Security].[UserRoles]