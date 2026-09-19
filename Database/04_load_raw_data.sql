USE CryptoMarketDW;
GO

BULK INSERT dbo.raw_CryptoMarketDaily
FROM 'C:\Users\r\Documents\GitHub\crypto-market-analytics-dashboard\Data\processed\bitcoin_daily_market.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
GO