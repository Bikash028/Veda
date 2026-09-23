SELECT
    ProductName,
    Price,
    ROW_NUMBER() OVER (
        ORDER BY Price DESC
    ) AS RowNum
FROM Products;