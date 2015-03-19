CREATE PROCEDURE [dbo].[GetCategoriesByHousehold]
	@householdId int
AS
BEGIN
	SELECT * FROM [dbo].[Categories]
	WHERE HouseholdId = @householdId
	ORDER BY Name
END
GO
