-- Cleansed DIM_Products Table
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS [Product Item Code],
		--[ProductSubcategoryKey], 
		--[WeightUnitMeasureCode],
		--[SizeUnitMeasureCode],
  p.[EnglishProductName] AS [Product Name], 
  ps.[EnglishProductSubcategoryName] AS [Subcategory],-- Joined in from Sub Category Table
  pc.[EnglishProductCategoryName] AS [Product Category], -- Joined in from Category Table
		--[SpanishProductName],
		--[FrenchProductName],
		--[StandardCost],
		--[FinishedGoodsFlag],
  p.[Color] AS [Product Color], 
		--[SafetyStockLevel],
		--[ReorderPoint],
		--[ListPrice],
  p.[Size] AS [Product Size], 
		--[SizeRange],
		--[Weight],
		--[DaysToManufacture],
  p.[ProductLine] AS [Product Line], 
		--[DealerPrice],
		--[Class],
		--[Style],
  p.[ModelName] AS [Product Model Name], 
		--[LargePhoto],
  p.[EnglishDescription] AS [Product Description], 
		--[FrenchDescription],
		--[ChineseDescription],
		--[ArabicDescription],
		--[HebrewDescription],
		--[ThaiDescription],
		--[GermanDescription],
		--[JapaneseDescription],
		--[TurkishDescription],
		--[StartDate],
		--[EndDate],
  ISNULL (p.Status, 'Outdated') AS [Product Status] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] p 
  LEFT JOIN dbo.DimProductSubcategory as ps ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory as pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC
