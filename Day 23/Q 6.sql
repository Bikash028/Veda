SELECT
    ProductName,
    CategoryID,
    Price,
    RANK() OVER (
        PARTITION BY CategoryID
        ORDER BY Price DESC
    )
FROM Products;