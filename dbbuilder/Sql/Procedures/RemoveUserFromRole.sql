CREATE PROCEDURE [Security].[RemoveUserFromRole]
	-- Add the parameters for the stored procedure here
	@userId int,
	@role nvarchar(256)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE Security.UserRoles
		FROM Security.UserRoles INNER JOIN Security.Roles 
		ON Security.UserRoles.RoleId=Security.Roles.Id
		WHERE Security.UserRoles.UserId = @userId AND Security.Roles.Name = @role 
END

GO


