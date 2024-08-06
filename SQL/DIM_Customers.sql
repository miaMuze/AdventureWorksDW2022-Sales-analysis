-- Cleansed DIM_Customers Table
SELECT 
  [CustomerKey], 
		--[GeographyKey],
		--[CustomerAlternateKey],
		--[Title],
  [FirstName] AS [First Name], 
		--[MiddleName],
  [LastName] AS [Last Name], 
		--Combine First and Last Name to Full Name.
  [FirstName] + [LastName] AS [Full Name],
		--[NameStyle],
		--[BirthDate],
		--[MaritalStatus],
		--[Suffix],
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
		--[EmailAddress],
		--[YearlyIncome],
		--[TotalChildren],
		--[NumberChildrenAtHome],
		--[EnglishEducation],
		--[SpanishEducation],
		--[FrenchEducation],
		--[EnglishOccupation],
		--[SpanishOccupation],
		--[FrenchOccupation],
		--[HouseOwnerFlag],
		--[NumberCarsOwned],
		--[AddressLine1],
		--[AddressLine2],
		--[Phone],
  [DateFirstPurchase], 
		--[CommuteDistance],
  g.city AS [Customer City] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c 
  LEFT JOIN AdventureWorksDW2022.dbo.DimGeography AS g ON c.GeographyKey = g.GeographyKey 
ORDER BY 
  CustomerKey ASC
