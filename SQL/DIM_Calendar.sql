-- Cleans DIM_Date Table
SELECT 
  [datekey], 
  [fulldatealternatekey] AS Date, 
		--[DayNumberOfWeek] 
  [englishdaynameofweek] AS Day, 
		--[SpanishDayNameOfWeek],
		--[FrenchDayNameOfWeek],
		--[DayNumberOfMonth],
		--[DayNumberOfYear],
  [weeknumberofyear] AS [Week No.], 
  [englishmonthname] AS Month, 
  LEFT(englishmonthname, 3) AS [Short Month], 
		--[SpanishMonthName],
		--[FrenchMonthName],
  [monthnumberofyear] AS [Month No.], 
  [calendarquarter] AS Quarter, 
  [calendaryear] AS Year --[CalendarSemester],
		--[FiscalQuarter],
		--[FiscalYear],
		--[FiscalSemester],
FROM 
  [AdventureWorksDW2022].[dbo].[dimdate] 
WHERE 
  calendaryear > 2021
