CREATE PROCEDURE [Security].[FindUserByEmail]
	-- Add the parameters for the stored procedure here
	@email nvarchar(256)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * FROM Security.Users
	WHERE Email = @email
END

GO


