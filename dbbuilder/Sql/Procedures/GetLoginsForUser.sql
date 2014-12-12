CREATE PROCEDURE [Security].[GetLoginsForUser]
	-- Add the parameters for the stored procedure here
	@userId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Security.UserLogins
	WHERE Security.UserLogins.UserId = @userId
END

GO


