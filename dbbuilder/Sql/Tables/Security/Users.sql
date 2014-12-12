CREATE TABLE [Security].[Users]
(
	Id					INT IDENTITY		NOT NULL,
	HouseholdId			INT					NULL,
	UserName			NVARCHAR(256)		NOT NULL,
	Name				NVARCHAR(256)		NOT NULL,
	Email				NVARCHAR(256)		NOT NULL,
	PhoneNumber			NVARCHAR(50)		NULL,
	PasswordHash		NVARCHAR(MAX)		NOT NULL,
	SecurityStamp		NVARCHAR(MAX)		NULL,
	IsDeleted			BIT					NOT NULL,
	IsLockedOut			BIT					NOT NULL,
	PasswordResetToken	NVARCHAR(MAX)		NULL,
	PasswordResetExpire DATETIMEOFFSET(7)	NULL,
	LockoutEndDate		DATETIMEOFFSET(7)	NULL,
	AccessFailedCount	INT					NULL,
	EmailConfirmed		NVARCHAR(256)		NULL,
	LockoutEnabled		BIT					NOT NULL
)
GO	

ALTER TABLE [Security].[Users]
ADD CONSTRAINT PK_Users 
PRIMARY KEY CLUSTERED (Id)
GO

CREATE UNIQUE NONCLUSTERED INDEX IDX_UserNames
ON [Security].[Users] (UserName)
GO

ALTER TABLE [Security].[Users]
WITH CHECK ADD CONSTRAINT FK_Users_Households
FOREIGN KEY (HouseholdId) REFERENCES [Security].[Households] ([Id])
GO

AUTOPROC Select,Insert,Update,Delete [Security].[Users]