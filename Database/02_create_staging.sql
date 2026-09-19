USE CryptoMarketDW;
GO

CREATE TABLE dbo.stg_CryptoMarketDaily
(
    Date DATE NOT NULL,
    Price DECIMAL(18,6) NOT NULL,
    MarketCap DECIMAL(20,2) NOT NULL,
    TotalVolume DECIMAL(20,2) NOT NULL,
    DailyReturn DECIMAL(12,8) NULL,
    RollingVolatility7D DECIMAL(12,8) NULL,
    RunningPeak DECIMAL(18,6) NOT NULL,
    Drawdown DECIMAL(12,8) NOT NULL
);
GO