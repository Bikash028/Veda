# Day 19 – Inventory Turnover Analysis

## Overview
Day 19 of my Data Analytics Internship focused on **Inventory Turnover Analysis**.
The objective was to analyze stock movement, compare inventory turnover across product categories, and identify relatively slow-moving products.
The analysis was performed using Microsoft Excel on a retail store inventory dataset.

## Objectives
- Analyze inventory movement at the product level.
- Calculate inventory turnover ratios.
- Compare turnover across product categories.
- Identify relatively slow-moving products.
- Calculate the percentage of products classified as slow-moving.
- Create visualizations to communicate inventory performance.
- Understand the business meaning of inventory turnover.

## Dataset
**Dataset:** `retail_store_inventory.csv`
The dataset contains retail inventory records with information such as:
- Date
- Store ID
- Product ID
- Category
- Region
- Inventory Level
- Units Sold
- Units Ordered
- Demand Forecast
- Price
- Discount
- Weather Condition
- Holiday/Promotion
- Competitor Pricing
- Seasonality

## Tools Used
- Microsoft Excel
- Excel formulas
- Data analysis
- Data visualization

## Analysis Methodology
### 1. Product-Level Turnover
A turnover ratio was calculated using:

```text
Turnover Ratio = Total Units Sold / Average Inventory
```
Excel formula:

=IFERROR(B2/C2,0)

where:

B2 = Total Units Sold
C2 = Average Inventory
2. Category-Level Turnover

Category-wise total units sold and average inventory were calculated using:
=SUMIF('Day 19 - Inventory Analysis'!D:D,A2,'Day 19 - Inventory Analysis'!G:G)

Average inventory:
=AVERAGEIF('Day 19 - Inventory Analysis'!D:D,A2,'Day 19 - Inventory Analysis'!F:F)

Turnover ratio:
=IFERROR(B2/C2,0)
Product-Level Results

The analysis covered 20 products.
Average Product Turnover
1,817.22

Products with turnover below this benchmark were classified as relatively slow-moving.
Slow-Moving Products
There were 9 relatively slow-moving products.
| Product ID | Turnover Ratio |
| ---------- | -------------: |
| P0008      |        1791.09 |
| P0003      |        1794.18 |
| P0017      |        1798.32 |
| P0002      |        1799.13 |
| P0012      |        1804.21 |
| P0010      |        1805.85 |
| P0018      |        1807.27 |
| P0019      |        1813.67 |
| P0006      |        1817.19 |

Slow-Moving Percentage
9 / 20 = 45%

Therefore:
Slow-Moving Products = 45% of the analyzed products
Category-Level Results
| Category    | Total Units Sold | Average Inventory | Turnover Ratio |
| ----------- | ---------------: | ----------------: | -------------: |
| Groceries   |        2,000,482 |            275.76 |       7,254.55 |
| Toys        |        1,990,485 |            273.65 |       7,273.92 |
| Electronics |        1,960,432 |            272.51 |       7,193.86 |
| Furniture   |        2,025,017 |            275.82 |       7,341.91 |
| Clothing    |        1,999,166 |            274.60 |       7,280.34 |


The observed category turnover ratios ranged from 7,193.86 to 7,341.91.
Inventory Summary
| Metric                 |    Value |
| ---------------------- | -------: |
| Total Products         |       20 |
| Average Turnover       | 1,817.22 |
| Slow-Moving Products   |        9 |
| Slow-Moving Percentage |      45% |


Business Insights
