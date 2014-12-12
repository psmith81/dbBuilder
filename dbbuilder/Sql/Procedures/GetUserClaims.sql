CREATE PROCEDURE [Security].[GetUserClaims]
	-- Add the parameters for the stored procedure here
	@userId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Security.UserClaims
	WHERE UserClaims.UserId = @userId
END

GO


