CREATE PROCEDURE [Security].[GetRolesForUser]
	-- Add the parameters for the stored procedure here
	@userId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Roles].[Name] 
	FROM [Security].[Roles] INNER JOIN [Security].[UserRoles]
	ON [Roles].Id=[UserRoles].RoleId
	WHERE [UserRoles].UserId = @userId
END

GO


