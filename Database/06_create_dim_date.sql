/*
The Date Dimension is a core component of the Data Warehouse model. It provides calendar attributes such as year, quarter, month, and day, enabling efficient time-based analysis and reporting.
*/
USE CryptoMarketDW;
GO

CREATE TABLE dbo.DimDate
(
    DateKey INT PRIMARY KEY,

    FullDate DATE NOT NULL,

    DayNumber TINYINT NOT NULL,

    MonthNumber TINYINT NOT NULL,

    MonthName VARCHAR(20) NOT NULL,

    QuarterNumber TINYINT NOT NULL,

    YearNumber SMALLINT NOT NULL
);
GO



/*For test Query:
SELECT *
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_NAME = 'DimDate';

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
ORDER BY TABLE_NAME;
*/
