# Day 16 – Simple Profit Analysis

## Overview

As part of my Data Analytics Internship, Day 16 focused on performing Simple Profit Analysis using Microsoft Excel and the Sample Superstore dataset.
The objective was to calculate total profit and average profit for each product category and compare the results using a visual chart.

## Objectives
- Calculate total profit by product category.
- Calculate average profit by product category.
- Compare profitability across categories.
- Create a chart to visualize total profit.
- Understand the difference between total profit and average profit.
- Extract basic business insights from the analysis.

## Dataset
The analysis was performed using the Sample Superstore dataset.
### Dataset Details
- Total Records: 9,994
- Total Columns: 19
- Category Column: Category
- Profit Column: Profit
- Sales Column: Sales

The categories analyzed were:
- Furniture
- Technology
- Office Supplies

## Profit Summary
| Category | Total Profit | Average Profit |
| Furniture | 63,902.86 | 8.70 |
| Technology | 43,796.30 | 78.75 |
| Office Supplies | 178,655.95 | 20.33 |

## Excel Functions Used
### SUMIF

`SUMIF` was used to calculate the total profit for each category.

Example:

```excel
=SUMIF(Table1[Category],A3,Table1[Profit])
