# Day 22 — Cohort Retention Analysis

## 📌 Overview
Analyzed customer retention using the **Online Retail II** dataset by grouping customers based on their first purchase month and tracking repeat activity over time.

## 🎯 Objective
Measure how customer retention changes across cohorts and months after the first purchase.

## 📂 Dataset
- Dataset: Online Retail II
- Original records: **541,910**
- Key columns: `Customer ID`, `InvoiceDate`, `Invoice`, `Quantity`, `Price`, `Country`

## 🧹 Data Cleaning
- Removed missing `Customer ID`
- Removed cancelled invoices
- Removed `Quantity <= 0`
- Converted `InvoiceDate` to datetime
- Created monthly purchase periods

## 🔄 Methodology
1. Find each customer's first purchase.
2. Assign the first purchase month as the **Cohort Month**.
3. Calculate **Months Since Cohort**.
4. Count unique active customers.
5. Calculate retention:

**Retention % = Active Customers in Month N / Cohort Size × 100**

## 📊 Key Results

| Cohort | M0 | M1 | M2 | M3 | M6 | M9 | M12 |
|---|---:|---:|---:|---:|---:|---:|---:|
| Dec 2010 | 100.00% | 36.61% | 32.32% | 38.42% | 36.27% | 39.55% | 26.55% |

### Observations
- Month 1 retention ranged from **11.11% to 36.61%** among observed cohorts.
- Highest observed Month 1 retention: **Dec 2010 — 36.61%**.
- Highest observed Month 3 retention: **Dec 2010 — 38.42%**.
- December 2010 had **26.55% retention in Month 12**.
- Retention is not strictly decreasing because customers can return intermittently.
- Missing later-month values indicate insufficient observation time, not 0% retention.

## 📈 Visualization
Created a **Cohort Retention Heatmap** to visualize retention across cohorts and months.

## 🛠️ Tools
**Python | Pandas | Matplotlib | Excel | OpenPyXL | Jupyter Notebook**

## 🎓 Skills Demonstrated
Data Cleaning • Cohort Analysis • Customer Retention • Date Analysis • Pandas • Data Visualization • Excel Reporting

