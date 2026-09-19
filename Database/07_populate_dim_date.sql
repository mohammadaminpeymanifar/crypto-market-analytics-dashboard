USE CryptoMarketDW;
GO

INSERT INTO dbo.DimDate
(
    DateKey,
    FullDate,
    DayNumber,
    MonthNumber,
    MonthName,
    QuarterNumber,
    YearNumber
)
SELECT DISTINCT

    YEAR(Date) * 10000 +
    MONTH(Date) * 100 +
    DAY(Date) AS DateKey,

    Date AS FullDate,

    DAY(Date) AS DayNumber,

    MONTH(Date) AS MonthNumber,

    DATENAME(MONTH, Date) AS MonthName,

    DATEPART(QUARTER, Date) AS QuarterNumber,

    YEAR(Date) AS YearNumber

FROM dbo.stg_CryptoMarketDaily;
GO


/*for test Query:
SELECT COUNT(*) AS TotalRows
FROM dbo.DimDate;

SELECT TOP 5 *
FROM dbo.DimDate
ORDER BY FullDate;*/