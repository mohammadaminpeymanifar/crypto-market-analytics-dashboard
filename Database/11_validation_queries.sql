USE CryptoMarketDW;
GO


/* =========================================================
   1. Row Count Validation
   ========================================================= */

SELECT
    COUNT(*) AS TotalRows
FROM dbo.vw_CryptoMarketAnalytics;
GO


/* =========================================================
   2. Date Range Validation
   ========================================================= */

SELECT
    MIN(FullDate) AS StartDate,
    MAX(FullDate) AS EndDate,
    COUNT(DISTINCT FullDate) AS TotalDates
FROM dbo.vw_CryptoMarketAnalytics;
GO


/* =========================================================
   3. Missing Value Validation
   ========================================================= */

SELECT
    COUNT(*) AS TotalRows,

    SUM(CASE WHEN DailyReturn IS NULL THEN 1 ELSE 0 END)
        AS MissingDailyReturn,

    SUM(CASE WHEN RollingVolatility7D IS NULL THEN 1 ELSE 0 END)
        AS MissingRollingVolatility7D

FROM dbo.vw_CryptoMarketAnalytics;
GO


/* =========================================================
   4. Financial Metrics Validation
   ========================================================= */

SELECT
    AVG(DailyReturn) AS AverageDailyReturn,

    STDEV(DailyReturn) AS DailyVolatility,

    STDEV(DailyReturn) * SQRT(252)
        AS AnnualizedVolatility,

    MIN(Drawdown) AS MaximumDrawdown,

    MIN(DailyReturn) AS MinimumDailyReturn,

    MAX(DailyReturn) AS MaximumDailyReturn

FROM dbo.vw_CryptoMarketAnalytics;
GO


/* =========================================================
   5. Data Integrity Validation
   ========================================================= */

SELECT
    COUNT(*) AS InvalidRows
FROM dbo.vw_CryptoMarketAnalytics
WHERE
    Price <= 0
    OR MarketCap <= 0
    OR TotalVolume < 0;
GO


/* =========================================================
   6. Date Dimension Join Validation
   ========================================================= */

SELECT
    COUNT(*) AS UnmatchedDateRows
FROM dbo.FactCryptoMarket AS f
LEFT JOIN dbo.DimDate AS d
    ON f.DateKey = d.DateKey
WHERE d.DateKey IS NULL;
GO