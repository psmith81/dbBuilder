CREATE PROCEDURE [Security].[AddUserToRole]
	-- Add the parameters for the stored procedure here
	@userId int,
	@role nvarchar(256)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Security.UserRoles (UserId, RoleId)
		VALUES (@userId, (SELECT Id FROM Security.Roles
		WHERE Roles.Name = @role))
END

GO


