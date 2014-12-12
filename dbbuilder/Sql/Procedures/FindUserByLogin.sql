CREATE PROCEDURE [Security].[FindUserByLogin]
	-- Add the parameters for the stored procedure here
	@loginProvider nvarchar(128),
	@providerKey nvarchar(128)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT  Users.* 
	FROM Security.Users INNER JOIN  Security.UserLogins
	ON Users.Id=UserLogins.UserId
	WHERE LoginProvider = @loginProvider AND ProviderKey = @providerKey
	
END

GO


