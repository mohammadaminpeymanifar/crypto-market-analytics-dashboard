============================= Crypto Market Analytics Dashboard =================================
================= End-to-End Financial Analytics & Business Intelligence Project ================
------------- این یک پروژه در حوزه "تحلیل داده های مالی" و "مبانی هوش تجاری" است-------------
------------------  که با استفاده از داده واقعی بازار بیت‌کوین ساخته شده است -----------------

- Overview
Crypto Market Analytics Dashboard is an end-to-end Financial Analytics and Business Intelligence project built using real Bitcoin market data.
The main focus is on combining Data Analytics, Data Warehousing, Business Intelligence, and Financial Risk Analysis in a single workflow.
--------------- تمرکز این پروژه بر ترکیب تحلیل داده، پایگاه داده، مبانی پیاده سازی هوش تجاری و تحلیل ریسک مالی است --------------

The project demonstrates the complete journey from raw market data to an analytical Power BI dashboard:
CoinGecko API
      ↓
Python
      ↓
Processed Daily Data
      ↓
SQL Server
      ↓
Data Warehouse
      ↓
Analytical SQL View
      ↓
Power BI


- Key Objectives
 Collect and transform real Bitcoin market data
 Build a structured SQL Server data warehouse
 Calculate financial performance and risk metrics
 Create an analytical SQL layer
 Build an interactive Power BI dashboard
 Present market performance and risk in a decision-oriented format


- Technology Stack
 | Area            | Tools                 |
 | --------------- | --------------------- |
 | Data Source     | CoinGecko API         |
 | Data Processing | Python, Pandas, NumPy |
 | Database        | SQL Server            |
 | Data Warehouse  | Star Schema           |
 | Analytics       | SQL, DAX              |
 | Visualization   | Power BI              |


- Data Warehouse
* Fact Table: 
-- FactCryptoMarket
   Contains:
    Price
    MarketCap
    TotalVolume
    DailyReturn
    RollingVolatility7D
    RunningPeak
    Drawdown
-- Fact Grain: One Bitcoin market observation per day.

* Dimension:
-- DimDate: Contains calendar attributes used for time-based analysis.


- Financial Metrics
The project includes:
 Daily Return
 Daily Volatility
 Annualized Volatility
 7-Day Rolling Volatility
 Running Peak
 Maximum Drawdown


- Power BI Dashboard
The dashboard is organized into three pages:
1. Market Overview: Market snapshot including price, market cap, trading volume, return and risk KPIs.
2. Price & Returns: Analysis of price movement, daily returns and drawdown.
3. Risk Analytics: Analysis of volatility, rolling volatility and daily return distribution.


- Repository Structure
crypto-market-analytics-dashboard/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── database/
│   └── *.sql
│
├── notebooks/
│   └── *.ipynb
│
├── dashboard/
│   ├── Crypto_Market_Dashboard.pbix
│   └── crypto_financial_analytics_theme.json
│
├── reports/
│   └── figures/
│
├── README.md
├── requirements.txt
└── .gitignore

