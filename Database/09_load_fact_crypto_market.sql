/*
This step loads cleansed market data from the staging layer into the Fact table and establishes relationships with the Date dimension using the DateKey surrogate key.
*/

USE CryptoMarketDW;
GO

INSERT INTO dbo.FactCryptoMarket
(
    DateKey,
    Price,
    MarketCap,
    TotalVolume,
    DailyReturn,
    RollingVolatility7D,
    RunningPeak,
    Drawdown
)
SELECT

    YEAR(s.Date) * 10000 +
    MONTH(s.Date) * 100 +
    DAY(s.Date) AS DateKey,

    s.Price,
    s.MarketCap,
    s.TotalVolume,
    s.DailyReturn,
    s.RollingVolatility7D,
    s.RunningPeak,
    s.Drawdown

FROM dbo.stg_CryptoMarketDaily s;
GO



/*Test Qurey:
SELECT COUNT(*) AS TotalRows
FROM dbo.FactCryptoMarket;

SELECT TOP 5 *
FROM dbo.FactCryptoMarket
ORDER BY DateKey;

SELECT
    f.DateKey,
    d.FullDate,
    f.Price
FROM dbo.FactCryptoMarket f
INNER JOIN dbo.DimDate d
    ON f.DateKey = d.DateKey;
*/
