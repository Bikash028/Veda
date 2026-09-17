# Day 17 – Monthly Sales Trend Analysis

## 📌 Overview

Day 17 focused on analyzing monthly sales trends using the Sample Superstore dataset in Microsoft Excel.
The objective was to clean inconsistent date values, create a standardized month field, calculate monthly sales, identify high- and low-performing months, and analyze yearly sales performance.

## 🎯 Objectives
- Clean inconsistent date formats.
- Convert text dates into valid Excel dates.
- Create a Month field for time-based analysis.
- Calculate monthly total sales.
- Identify the highest and lowest sales months.
- Calculate yearly sales totals.
- Visualize monthly and yearly sales trends.
- Generate business insights from the analysis.

## 📂 Dataset

**Dataset:** Sample Superstore
**Records:** 9,994
**Columns:** 19 original columns

Important columns used:

- Order Date
- Sales
- Month
- Clean Date

## 🔧 Data Preparation

The `Order Date` column contained dates in inconsistent formats.
Examples included:

- `06-09-2014`
- `4/15/2017`
- `12-05-2016`
- `11/22/2015`

Some dates were stored as valid Excel dates while others were stored as text.
A **Clean Date** column was created to standardize the values.
A separate **Month** column was then created using the first day of each month.
The Month field was formatted as:
```text
mmm-yyyy

Example:

Jan-2014
Feb-2014
Mar-2014
```
📊 Monthly Sales Analysis

Monthly sales were calculated using SUMIFS.

Formula used:

=SUMIFS('Raw Data'!R:R,'Raw Data'!E:E,">="&A2,'Raw Data'!E:E,"<"&EDATE(A2,1))

This formula calculates sales between the beginning of the selected month and the beginning of the following month.

📈 Monthly Sales Trend

A line chart was created using:

X-axis: Month
Y-axis: Total Sales

Chart title:

Monthly Sales Trend (2014–2017)

The chart helps visualize monthly fluctuations and changes in sales over time.

🔝 Highest and Lowest Sales Months
Highest Monthly Sales

Month: November 2017

Sales: ₹89,306.24

📅 Yearly Sales Analysis
The monthly sales values were summarized into yearly totals.
Year	Total Sales
2014	₹484,247.50
2015	₹470,532.51
2016	₹609,205.60
2017	₹733,215.26
A yearly comparison chart was created to compare sales performance across the four years.

💡 Key Business Insights
Sales fluctuate considerably from month to month.
November 2017 recorded the highest monthly sales of ₹89,306.24.
February 2015 recorded the lowest monthly sales of ₹20,728.35.
2017 recorded the highest annual sales among the four years.
The later years show stronger overall sales compared with the earlier years.
The monthly trend can be further investigated to understand seasonal sales patterns.

📊 Visualizations
Monthly Sales Trend
A line chart was created to show monthly sales from January 2014 to December 2017.
Yearly Sales Comparison
A clustered column chart was created to compare annual sales from 2014 to 2017.
