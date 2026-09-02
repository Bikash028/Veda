# Exploratory Data Analysis - Sample Superstore

## 📌 Project Overview

This project performs Exploratory Data Analysis (EDA) on the Sample
Superstore dataset using Python.

The objective is to understand the dataset, identify patterns and
relationships, detect potential outliers, and generate meaningful
business insights using statistical analysis and data visualization.

---

## 🎯 Objectives

- Understand the structure of the dataset
- Identify missing values and duplicate records
- Perform data cleaning
- Generate summary statistics
- Analyze the distribution of sales and profit
- Identify potential outliers
- Study relationships between numerical variables
- Compare sales across product categories
- Compare profitability across regions
- Generate meaningful business insights

---

## 📊 Dataset

The dataset used in this project is the **Sample Superstore dataset**.

It contains information about:

- Ship Mode
- Segment
- Country
- City
- State
- Postal Code
- Region
- Category
- Sub-Category
- Sales
- Quantity
- Discount
- Profit

The dataset contains approximately 9,994 records and 13 columns.

---

## 🛠️ Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

---

## 🔍 Analysis Performed

### 1. Data Loading

The dataset was loaded using Pandas.

### 2. Data Cleaning

The following checks were performed:

- Missing values
- Duplicate records
- Data types
- Dataset dimensions
- Unique values

### 3. Summary Statistics

Descriptive statistics were calculated for numerical variables such
as:

- Sales
- Quantity
- Discount
- Profit

### 4. Data Visualization

The following visualizations were created:

1. Sales Distribution Histogram
2. Profit Boxplot
3. Correlation Heatmap
4. Sales by Category Bar Chart
5. Profit by Region Bar Chart
6. Discount vs Profit Scatter Plot

---

## 💡 Key Questions

The analysis attempts to answer questions such as:

- How are sales distributed?
- Are there potential outliers in profit?
- How are sales, quantity, discount, and profit related?
- Which category generates the highest sales?
- Which region generates the highest profit?
- Does discount appear to have a relationship with profit?

---

## 📈 Key Insights

The major findings from the analysis include:

1. Sales are concentrated among relatively smaller orders, with a
   smaller number of orders having substantially higher sales.

2. The profit distribution contains potential outliers that require
   further investigation.

3. Sales, discount, quantity, and profit show different levels of
   correlation, providing useful information about relationships
   between business variables.

4. Sales performance varies across product categories.

5. Profitability varies across different geographical regions.

---

## 📁 Project Structure

```text
EDA_Superstore/
│
├── SampleSuperstore.csv
├── EDA_Superstore.ipynb
└── README.md
