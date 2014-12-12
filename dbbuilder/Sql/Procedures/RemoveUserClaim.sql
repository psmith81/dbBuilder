CREATE PROCEDURE [Security].[RemoveUserClaim]
	-- Add the parameters for the stored procedure here
	@userId int,
	@claimType nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DELETE FROM Security.UserClaims
	WHERE UserId = @userId AND ClaimType = @claimType
END

GO


