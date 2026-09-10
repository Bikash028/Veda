# Day 10 – Simple KPI Tracking Sheet

## 📌 Project Overview
This project focuses on creating a simple and interactive KPI tracking sheet using the **Sample Superstore dataset** in Microsoft Excel.
The objective is to calculate important business KPIs and present them in a clear and easy-to-understand format for quick performance monitoring.
## 🎯 Objectives
- Calculate important business KPIs.
- Use Excel formulas for automated calculations.
- Track revenue and units sold.
- Calculate the Average Order Value (AOV).
- Identify the top-performing product.
- Present KPIs using a simple visualization.
- Generate actionable business insights.

## 📊 Dataset
The dataset contains sales transaction information including:
- Order ID
- Order Date
- Customer Information
- Region
- Category
- Sub-Category
- Product Name
- Sales
- Quantity
- Discount
- Profit

**Number of records:** 9,994
---
## 📈 KPIs Created
| KPI | Result |
|---|---:|
| Total Revenue | ₹2,297,200.86 |
| Units Sold | 37,873 |
| Average Order Value | ₹458.61 |
| Top Product | Canon imageCLASS 2200 Advanced Copier |

### Average Order Value

AOV was calculated using:

`Total Revenue ÷ Number of Unique Orders`

There are **5,009 unique orders** in the dataset.

---

## 🛠️ Excel Functions Used

The project uses Excel functions such as:

- `SUM()`
- `COUNTA()`
- `UNIQUE()`
- `SUMIF()`
- `LET()`
- `INDEX()`
- `MATCH()`
- `MAX()`

These formulas help make the KPI tracking sheet dynamic and easier to maintain.

---

## 📊 Visualization

A **Clustered Column Chart** was created to visualize the numerical KPIs:

- Total Revenue
- Units Sold
- Average Order Value

The chart provides a quick visual overview of the dataset's key performance indicators.

## 🔍 Key Insights

1. The dataset generated approximately **₹2.30 million in total revenue**.
2. A total of **37,873 units** were sold.
3. The average value generated per order was approximately **₹458.61**.
4. **Canon imageCLASS 2200 Advanced Copier** was the top-selling product based on total sales.
5. KPI tracking provides a quick way to monitor overall business performance.
