# Day 13 – Duplicate Record Check

## 📌 Project Overview

This project focuses on identifying and documenting duplicate records in the Superstore dataset using Microsoft Excel.
The main objective was to check whether the dataset contained completely duplicated rows, understand how duplicate records can affect data analysis, and prepare a clean dataset for further analysis.

## 🎯 Objectives

- Check the dataset for duplicate records.
- Identify completely duplicated rows.
- Understand the impact of duplicates on analytical results.
- Create a duplicate-check report.
- Verify the number of clean records after the duplicate check.
- Document the findings and data-quality results.

## 📂 Dataset

**Dataset:** Sample Superstore
**Total Records:** 9,994
**Total Columns:** 19
The dataset contains information related to orders, customers, products, sales, discounts, quantities, and profits.

### Main Columns

- Row ID
- Order ID
- Order Date
- Ship Date
- Ship Mode
- Customer ID
- Segment
- Country
- City
- State
- Region
- Product ID
- Category
- Sub-Category
- Product Name
- Sales
- Quantity
- Discount
- Profit

## 🔍 Duplicate Check

A complete-row duplicate check was performed using **all 19 columns**.

### Results

| Metric | Result |
|---|---:|
| Total Records | 9,994 |
| Total Columns | 19 |
| Duplicate Rows | 0 |
| Records Removed | 0 |
| Clean Records | 9,994 |

No completely duplicated rows were found in the dataset.

## 🧹 Data Cleaning
Since no complete duplicate rows were identified, no records were removed.
The original dataset was preserved, and a separate sheet was used for the duplicate-check process.

### Dataset Status

```text
Original Records  →  9,994
Duplicate Rows    →  0
Removed Rows      →  0
Clean Records     →  9,994
