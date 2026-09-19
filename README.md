             CoinGecko API
                   │
                   ▼
             Python / Requests
                   │
                   ▼
              Raw CSV/JSON
                   │
                   ▼
        ┌─────────────────────┐
        │    SQL Server       │
        │                     │
        │   Staging Layer     │
        └──────────┬──────────┘
                   │
                   ▼
        ┌─────────────────────┐
        │   Data Warehouse    │
        │                     │
        │ Dim_Date            │
        │ Dim_Coin            │
        │ Fact_CryptoMarket   │
        └──────────┬──────────┘
                   │
                   ▼
                Power BI
                   │
                   ▼
       Crypto Market Analytics
              Dashboard