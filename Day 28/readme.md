Day 28 — Customer Repeat Purchase Analysis

## Project Overview

This project analyzes customer purchasing behavior using the Online Retail II dataset.
The main objective is to measure repeat purchase behavior, segment customers based on purchase frequency, and understand which customer groups contribute the most to total spending.
The analysis was performed using Python for data preparation and analysis, followed by Power BI for interactive visualization.

## Objectives

- Identify one-time and repeat customers.
- Calculate the customer repeat purchase rate.
- Analyze the number of orders made by each customer.
- Calculate total customer spending.
- Segment customers based on purchase frequency.
- Compare customer count and spending across segments.
- Build an interactive Power BI dashboard.
- Generate business insights from customer purchasing behavior.

## Dataset

**Dataset:** Online Retail II

The dataset contains retail transaction information including:

- Invoice
- Stock Code
- Description
- Quantity
- Invoice Date
- Price
- Customer ID
- Country

Original dataset size:

- Rows: 541,910
- Columns: 8

## Data Cleaning

The following cleaning operations were performed:

1. Removed transactions without a Customer ID.
2. Removed cancelled invoices.
3. Removed transactions with non-positive quantities.
4. Converted InvoiceDate to datetime format.
5. Converted Customer ID to integer.

After cleaning:

- Cleaned transactions: 397,925
- Unique customers: 4,339

## Customer Repeat Purchase Definition

A customer was classified as:

- **One-time Customer:** Customer with exactly 1 order.
- **Repeat Customer:** Customer with more than 1 order.

The repeat purchase rate was calculated as:

```text
Repeat Rate =
Repeat Customers / Total Customers × 100
```

Customer Segmentation
Customers were divided into four groups based on number of orders:
Segment	Orders
One-time	1
Occasional	2–3
Regular	4–10
Loyal	11+


Results
Overall Customer Analysis
Metric	Result
Total Customers	4,339
Repeat Customers	2,845
One-time Customers	1,494
Repeat Rate	65.57%


Customer Segment Analysis
Segment	Customers	Customer %	Avg Orders	Avg Spend	Total Spend	Spend %
One-time	1,494	34.43%	1.00	£412.52	£616,311.73	6.92%
Occasional	1,343	30.95%	2.38	£1,036.67	£1,392,251.23	15.62%
Regular	1,165	26.85%	5.78	£2,156.23	£2,512,007.73	28.19%
Loyal	337	7.77%	21.12	£13,029.24	£4,390,855.21	49.27%


Key Business Insights
1. Repeat customers represent approximately 65.57% of the identified customer base.
2. Loyal customers account for only 7.77% of customers but contribute 49.27% of total customer spending.
3. One-time customers represent 34.43% of customers but contribute only 6.92% of total spending.
4. Regular customers contribute 28.19% of total spending and represent 26.85% of customers.
5. Average spending increases substantially as purchase frequency increases, with loyal customers showing the highest average spend.
