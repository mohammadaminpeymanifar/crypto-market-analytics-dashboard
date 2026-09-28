=================================== Financial Analysis Report =======================================
1. Overview
This report summarizes the financial analysis of Bitcoin market data collected from the CoinGecko API.

The analysis focuses on:
* Price Performance
* Daily Returns
* Volatility
* Drawdown
* Return Distribution

Period: 20 August 2026 – 19 September 2026
Observations: 31 daily records


2. Price Performance
Bitcoin started the period at approximately $72.66K and reached a peak of $81.14K on 3 September.

It then declined to approximately **$75.62K** on 16 September before partially recovering.

![Bitcoin Price Trend](figures/bitcoin_price_trend.png)

---

## 3. Returns & Volatility

The average daily return was approximately **0.40%**, while daily returns ranged from **-3.68% to +7.96%**.

Daily volatility was approximately **2.49%**, corresponding to an annualized sample estimate of **39.52%**.

![Daily Returns](figures/daily_returns.png)

![7-Day Rolling Volatility](figures/rolling_volatility_7d.png)

---

## 4. Drawdown & Risk

The maximum observed drawdown was approximately **-6.80%**, occurring after the September 3 price peak.

![Bitcoin Drawdown](figures/drawdown.png)

### Risk Summary

| Metric                | Result |
| --------------------- | -----: |
| Average Daily Return  |  0.40% |
| Daily Volatility      |  2.49% |
| Annualized Volatility | 39.52% |
| Maximum Daily Return  |  7.96% |
| Minimum Daily Return  | -3.68% |
| Maximum Drawdown      | -6.80% |

---

## 5. Return Distribution

Daily returns were concentrated around relatively small movements, with occasional larger positive and negative changes.

![Daily Return Distribution](figures/daily_return_distribution.png)

---

## 6. Key Takeaway

The analysis shows that Bitcoin experienced **meaningful short-term price movements, high return variability, and a measurable downside drawdown** during the selected period.

Using **returns, volatility, and drawdown together** provides a more complete view of market behavior than price analysis alone.

> Results are based on a 31-day sample and should not be interpreted as long-term estimates.

---

## 7. Next Steps

Future analysis will extend the project toward:

* Value at Risk (VaR)
* Expected Shortfall (ES)
* CAPM & Fama-French
* Portfolio Risk & Diversification
* Machine Learning for Financial Return Prediction
