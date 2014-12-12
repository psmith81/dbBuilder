CREATE PROCEDURE [Security].[IsUserInRole] 
	-- Add the parameters for the stored procedure here
	-- (int userId, string role);
	@userId int,
	@role nvarchar(256)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CASE WHEN EXISTS (
    SELECT *
    FROM [Security].[UserRoles] INNER JOIN [Security].[Roles]
	ON UserRoles.RoleId=Roles.Id 
    WHERE Roles.Name = @role AND UserRoles.UserId = @userId
	)
	THEN CAST(1 AS BIT)
	ELSE CAST(0 AS BIT) END
END

GO


