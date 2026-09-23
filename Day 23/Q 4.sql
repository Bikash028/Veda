SELECT
    ProductName,
    Price,
    DENSE_RANK() OVER (
        ORDER BY Price DESC
    ) AS DensePriceRank
FROM Products;