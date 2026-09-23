SELECT
    ProductID,
    ProductName,
    Price,
    LAG(Price) OVER (
        ORDER BY ProductID
    ) AS PreviousPrice,
    Price - LAG(Price) OVER (
        ORDER BY ProductID
    ) AS PriceDifference
FROM Products;