# Day 23 — SQL Window Functions

## Overview
Day 23 focused on learning and practicing SQL Window Functions using MySQL Workbench and a Northwind-style dataset.

## Objectives
- Understand SQL Window Functions.
- Learn `ROW_NUMBER()`, `RANK()`, and `DENSE_RANK()`.
- Understand `PARTITION BY`.
- Learn `LAG()` and `LEAD()`.
- Apply window functions to ranking and comparison problems.
- Practice Top-N-per-group queries.

## Concepts Covered
- `ROW_NUMBER()` — unique sequential row number.
- `RANK()` — ranking with gaps after ties.
- `DENSE_RANK()` — ranking without gaps after ties.
- `PARTITION BY` — performs a window calculation separately for each group.
- `LAG()` — retrieves a previous row's value.
- `LEAD()` — retrieves a following row's value.

## Practical Queries Completed
1. Rank products by price using `RANK()`.
2. Number products by price using `ROW_NUMBER()`.
3. Rank products using `DENSE_RANK()`.
4. Rank products within each category.
5. Find the most expensive product in each category.
6. Find the second-most-expensive product in each category.
7. Compare a product price with the previous row using `LAG()`.
8. Calculate the price difference from the previous row.
9. Use `LAG()` separately within categories.
10. Calculate price differences within categories.
11. Find the next product price using `LEAD()`.
12. Calculate the difference between the current and next product price.

## Important Top-N Pattern
```sql
SELECT *
FROM (
    SELECT
        ProductName,
        CategoryID,
        Price,
        ROW_NUMBER() OVER (
            PARTITION BY CategoryID
            ORDER BY Price DESC
        ) AS rn
    FROM Products
) AS RankedProducts
WHERE rn <= 2;
```

## Key Takeaways

| Function | Purpose |
|---|---|
| `ROW_NUMBER()` | Unique row position |
| `RANK()` | Ranking with gaps after ties |
| `DENSE_RANK()` | Ranking without gaps after ties |
| `LAG()` | Previous row value |
| `LEAD()` | Next row value |
| `PARTITION BY` | Separate window calculation by group |

## Tools Used
- MySQL
- MySQL Workbench
- SQL
- Northwind-style relational dataset
