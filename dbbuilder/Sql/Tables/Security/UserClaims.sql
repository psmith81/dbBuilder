CREATE TABLE [Security].[UserClaims]
(
	Id			INT IDENTITY	NOT NULL,
	UserId		INT				NOT NULL,
	ClaimType	NVARCHAR(MAX)	NULL,
	ClaimValue	NVARCHAR(MAX)	NULL
)
GO	

ALTER TABLE [Security].[UserClaims]
ADD CONSTRAINT PK_UserClaims 
PRIMARY KEY CLUSTERED (Id)
GO

CREATE INDEX IDX_UserClaims
ON [Security].[UserClaims] (Id)
GO

ALTER TABLE [Security].[UserClaims]
WITH CHECK ADD CONSTRAINT FK_UserClaims_Users
FOREIGN KEY (UserId) REFERENCES [Security].[Users] ([Id])
GO

AUTOPROC Select,Insert,Update,Delete [Security].[UserClaims]