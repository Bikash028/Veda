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

Visualizations

Two charts were created in Excel:
1. Inventory Turnover by Category
A column chart comparing turnover ratios across:
Groceries
Toys
Electronics
Furniture
Clothing
2. Slow-Moving Products by Turnover Ratio
A bar chart showing the nine products classified as relatively slow-moving.
Key Findings
The analysis covered 20 products.
The average product-level turnover ratio was 1,817.22.
9 products had turnover below this benchmark.
Therefore, 45% of products were classified as relatively slow-moving.
Among the categories analyzed, Furniture had a turnover ratio of 7,341.91, while Electronics had 7,193.86.
The category turnover ratios were relatively close to each other.
P0008 had the lowest turnover ratio among the identified slow-moving products at 1,791.09.
P0006 had a turnover ratio of 1,817.19, which was just below the benchmark of 1,817.22.
Business Interpretation

Products with turnover below the product-level benchmark can be flagged for further inventory review.
Slow-moving inventory may require additional investigation because inventory that remains in stock for longer periods can increase holding requirements and tie up working capital.
However, the slow-moving classification in this project is relative to the dataset's average turnover. It does not by itself indicate that a product is unsold or commercially unsuccessful.

A real-world inventory analysis could additionally consider:
Stockout frequency
Inventory holding cost
Demand forecasts
Seasonality
Reorder levels
Lead time
Historical demand trends
Interview Questions
What is inventory turnover?

Inventory turnover measures how quickly inventory is sold or consumed during a given period.

The standard formula is:
Inventory Turnover = Cost of Goods Sold / Average Inventory

For this project, a unit-based turnover measure was used:

Turnover Ratio = Units Sold / Average Inventory

Why can high turnover be risky?
High turnover can indicate that inventory is moving quickly, but if replenishment cannot keep up with demand, the business may experience stockouts and potentially lose sales.
Therefore, turnover should be evaluated together with inventory availability and demand.

What is a slow-moving product?
A slow-moving product is an item whose inventory moves relatively slowly compared with a defined benchmark.
In this project, products with turnover below 1,817.22 were classified as relatively slow-moving.

Skills Practiced
Inventory Analysis
Excel Data Analysis
SUMIF
AVERAGEIF
IF
COUNTIF
FILTER
Inventory Turnover Calculation
Category Analysis
Data Visualization
Business Insights
