USE CryptoMarketDW;
GO

CREATE TABLE dbo.raw_CryptoMarketDaily
(
    Date NVARCHAR(50),
    Price NVARCHAR(50),
    MarketCap NVARCHAR(50),
    TotalVolume NVARCHAR(50),
    DailyReturn NVARCHAR(50),
    RollingVolatility7D NVARCHAR(50),
    RunningPeak NVARCHAR(50),
    Drawdown NVARCHAR(50)
);
GO