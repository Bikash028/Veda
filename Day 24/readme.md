# Day 24 — Data Quality Audit

## Overview
Day 24 focused on performing a systematic Data Quality Audit using Python and Pandas.
The objective was to identify, quantify, document, and address common data-quality issues in a Superstore dataset.

## Dataset
Dataset: Superstore
- Records: 9,994
- Columns: 19
- Tool: Python
- Library: Pandas
- Environment: Jupyter Notebook / VS Code

## Objectives

- Identify missing values.
- Detect duplicate records.
- Validate numerical ranges.
- Check data types.
- Validate date fields.
- Quantify detected data-quality issues.
- Create a cleaned version of the dataset.
- Produce a final audit summary.

## Data Quality Checks

### 1. Missing Values

Checked every column for:

- Number of missing values
- Percentage of missing values

### 2. Duplicate Records

Checked the complete dataset for duplicate rows and quantified the number and percentage of duplicates.

### 3. Range Validation

The following numerical fields were checked:

- Sales
- Quantity
- Discount
- Profit

Validation rules included:

- Sales should be greater than 0.
- Quantity should be greater than 0.
- Discount should be between 0 and 1.
- Negative Profit was treated as a valid business value because a loss can occur in real transactions.

### 4. Data Type Validation

Checked whether:

- Order Date was correctly represented as a date.
- Ship Date was correctly represented as a date.
- Sales was numeric.
- Quantity was numeric.
- Discount was numeric.
- Profit was numeric.

### 5. Consistency Checks

Checked:

- Leading/trailing spaces in text fields.
- Unique categorical values.
- Relationship between Order Date and Ship Date.
- Shipping duration.
- Negative shipping durations.

### 6. Data Cleaning

A separate copy of the dataset was created.

The cleaning process included:

- Removing confirmed duplicate rows.
- Removing unnecessary leading/trailing spaces.
- Standardizing date data types.
- Preserving the original dataset.

## Key Learning

The audit demonstrated that data cleaning should be performed only after understanding and quantifying the underlying data-quality problems.

## Tools Used

- Python
- Pandas
- Jupyter Notebook / VS Code

## Skills Developed

- Data quality assessment
- Data validation
- Missing-value analysis
- Duplicate detection
- Data cleaning
- Data profiling
- Issue documentation
- Python/Pandas
