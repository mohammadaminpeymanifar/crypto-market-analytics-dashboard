USE CryptoMarketDW;
GO

INSERT INTO dbo.stg_CryptoMarketDaily
(
    Date,
    Price,
    MarketCap,
    TotalVolume,
    DailyReturn,
    RollingVolatility7D,
    RunningPeak,
    Drawdown
)
SELECT
    TRY_CONVERT(DATE, Date),

    TRY_CONVERT(
        DECIMAL(18,6),
        REPLACE(Price, CHAR(13), '')
    ),

    TRY_CONVERT(
        DECIMAL(20,2),
        REPLACE(MarketCap, CHAR(13), '')
    ),

    TRY_CONVERT(
        DECIMAL(20,2),
        REPLACE(TotalVolume, CHAR(13), '')
    ),

    TRY_CONVERT(
        DECIMAL(12,8),
        NULLIF(REPLACE(DailyReturn, CHAR(13), ''), '')
    ),

    TRY_CONVERT(
        DECIMAL(12,8),
        NULLIF(REPLACE(RollingVolatility7D, CHAR(13), ''), '')
    ),

    TRY_CONVERT(
        DECIMAL(18,6),
        REPLACE(RunningPeak, CHAR(13), '')
    ),

    TRY_CONVERT(
        DECIMAL(12,8),
        REPLACE(Drawdown, CHAR(13), '')
    )
FROM dbo.raw_CryptoMarketDaily;
GO