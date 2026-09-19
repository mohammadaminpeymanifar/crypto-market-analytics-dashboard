USE CryptoMarketDW;
GO

CREATE TABLE dbo.FactCryptoMarket
(
    FactID INT IDENTITY(1,1) PRIMARY KEY,

    DateKey INT NOT NULL,

    Price DECIMAL(18,6) NOT NULL,

    MarketCap DECIMAL(20,2) NOT NULL,

    TotalVolume DECIMAL(20,2) NOT NULL,

    DailyReturn DECIMAL(12,8) NULL,

    RollingVolatility7D DECIMAL(12,8) NULL,

    RunningPeak DECIMAL(18,6) NOT NULL,

    Drawdown DECIMAL(12,8) NOT NULL,

    CONSTRAINT FK_FactCryptoMarket_DimDate
        FOREIGN KEY (DateKey)
        REFERENCES dbo.DimDate(DateKey)
);
GO


/*for test Query:
SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
ORDER BY TABLE_NAME;*/