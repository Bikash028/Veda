# Day 11 – Basic Data Sorting & Filtering

## 📌 Project Overview

Day 11 focused on learning and applying **data sorting and filtering techniques in Microsoft Excel** using the Sample Superstore dataset.

The goal was to practice organizing a large dataset, applying multiple filters, identifying important records, and answering business-related questions using Excel.

## 🎯 Objectives

- Understand data sorting in Excel.
- Apply ascending and descending sorting.
- Apply filters to individual columns.
- Apply multiple filters simultaneously.
- Identify high-value transactions.
- Identify loss-making transactions.
- Analyze high-discount transactions.
- Answer business questions using filtered data.
- Present findings in a structured summary.

## 📊 Dataset

**Dataset:** Sample Superstore

**Number of records:** 9,994

Important columns used:

- Order ID
- Order Date
- Region
- Category
- Sub-Category
- Product Name
- Sales
- Discount
- Profit
- Quantity

## 🛠️ Tasks Performed

### 1. Sorting by Sales

The Sales column was sorted from **Largest to Smallest** to identify the highest individual sales transaction.

### 2. Filtering by Region

The dataset was filtered to display records from the **West** region.

### 3. Multiple Filtering

Multiple conditions were applied:

- Region = West
- Category = Technology
- Sales > ₹1,000

This helped identify high-value technology sales in the West region.

### 4. Sorting by Profit

The Profit column was sorted from **Largest to Smallest** to identify highly profitable transactions.

### 5. Identifying Loss-Making Transactions

A filter was applied:

`Profit < 0`

This identified transactions where the business made a loss.

### 6. Identifying High-Discount Transactions

A filter was applied:

`Discount >= 50%`

This identified transactions receiving heavy discounts.

### 7. Category and Sub-Category Filtering

The dataset was filtered using:

- Category = Furniture
- Sub-Category = Chairs

Sales were then sorted to identify the highest and lowest sales transactions within this group.

## 📈 Business Questions & Results

| No. | Business Question | Result |
|---:|---|---|
| 1 | Which region has the highest total sales? | **West** |
| 2 | Which category has the highest total sales? | **Technology** |
| 3 | Which product has the highest individual sales transaction? | **Cisco TelePresence System EX90 Videoconferencing Unit** |
| 4 | How many transactions have negative profit? | **1,872** |
| 5 | How many transactions have a discount of 50% or more? | **1,865** |

## 🔍 Key Insights

- The **West region** generated the highest total sales among the regions.
- **Technology** was the highest-selling category based on total sales.
- The **Cisco TelePresence System EX90 Videoconferencing Unit** had the highest individual sales transaction.
- **1,872 transactions** had negative profit.
- **1,865 transactions** had a discount of 50% or more.
- Sorting and filtering make it easier to identify important patterns and exceptions in large datasets.
