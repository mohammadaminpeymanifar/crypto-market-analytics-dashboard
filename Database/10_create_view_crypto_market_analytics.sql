USE CryptoMarketDW;
GO

CREATE VIEW dbo.vw_CryptoMarketAnalytics
AS
SELECT
    d.FullDate,
    d.YearNumber,
    d.QuarterNumber,
    d.MonthNumber,
    d.MonthName,

    f.Price,
    f.MarketCap,
    f.TotalVolume,
    f.DailyReturn,
    f.RollingVolatility7D,
    f.RunningPeak,
    f.Drawdown

FROM dbo.FactCryptoMarket AS f
INNER JOIN dbo.DimDate AS d
    ON f.DateKey = d.DateKey;
GO



/*
SELECT TOP 10 *
FROM dbo.vw_CryptoMarketAnalytics
ORDER BY FullDate;

SELECT COUNT(*) AS TotalRows
FROM dbo.vw_CryptoMarketAnalytics;
*/
