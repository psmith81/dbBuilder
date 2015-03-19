CREATE PROCEDURE [dbo].[GetRecentTransByHousehold]
	@householdId int
AS
BEGIN
	SELECT TOP 5 CONVERT(varchar(10),[dbo].Transactions.[Date],101) AS Date
		, [dbo].Categories.[Name] AS Category
		, [Security].Users.[Name] AS [User]
		, [dbo].Transactions.[SignedAmount] AS [Amount]
		, [dbo].Transactions.[Description]
		, [dbo].Accounts.[Name] AS [Account]
	FROM [dbo].Transactions 
		INNER JOIN [Security].Users
			ON Transactions.UpdatedByUserId=[Security].Users.Id
		INNER JOIN Categories
			ON Transactions.CategoryId=Categories.Id
		INNER JOIN Accounts
			ON Transactions.AccountId=Accounts.Id
	WHERE [dbo].[Transactions].HouseholdId = @householdId
	ORDER BY [dbo].Transactions.[Date] DESC, [dbo].Transactions.[Id] DESC
END
GO
