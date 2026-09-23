SELECT
    ProductName,
    Price,
    RANK() OVER (
        ORDER BY Price DESC
    ) AS PriceRank
FROM Products;