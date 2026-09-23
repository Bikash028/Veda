SELECT
    ProductID,
    ProductName,
    Price,
    LAG(Price) OVER (
        ORDER BY ProductID
    ) AS PreviousPrice
FROM Products;