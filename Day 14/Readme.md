# Day 14 – Basic Sales Summary

## Overview
As part of my Data Analytics Internship, Day 14 focused on creating a basic sales summary using Microsoft Excel and the Sample Superstore dataset.
The objective was to calculate important sales KPIs such as Total Sales, Average Sales, and Transaction Count.

## Objectives
- Calculate total sales from the dataset.
- Calculate average sales per record.
- Count the total number of transactions/records.
- Organize the results into a simple summary table.
- Understand the importance of basic KPIs in sales analysis.

## Dataset
The analysis was performed using the Sample Superstore dataset.

### Dataset Details
- Total Records: 9,994
- Total Columns: 19
- Main Sales Column: Sales
- Transaction/Order Column: Order ID

## KPIs Calculated
| KPI | Result |
|---|---:|
| Total Sales | 2,297,200.86 |
| Average Sales | 229.86 |
| Transaction Count | 9,994 |

## Excel Formulas Used
### Total Sales

```excel
=SUM(Table1[Sales])
=AVERAGE(Table1[Sales])
=COUNTA(Table1[Order ID])

Key Learning
```
Basic KPIs provide a quick way to understand the overall performance of a dataset. Before performing advanced analysis, calculating fundamental metrics such as total sales, average sales, and transaction count helps establish a clear understanding of the data.
