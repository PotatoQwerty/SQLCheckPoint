SELECT
    *
FROM
    Customers;

SELECT
    Product_Name,
    Category
FROM
    Products
WHERE
    Price BETWEEN 3000 AND 10000;

SELECT
    *
FROM
    Products
ORDER BY
    Price DESC;

SELECT
    COUNT(*) AS TotalOrders,
    AVG(total_Price) AS Avg_Price,
    MAX(total_Price) AS highest_amount,
    MIN(total_Price) AS Lowest_Amount
FROM
    Orders;

SELECT
    Product_Id,
    COUNT(*) AS Number_Of_Orders
FROM
    Orders
GROUP BY
    Product_Id;

SELECT
    Customer_Id
FROM
    Orders
GROUP BY
    Customer_Id
HAVING
    COUNT(*) > 2;

SELECT
    TO_CHAR (OrderDate, 'MM') AS month,
    COUNT(*) AS number_of_orders
FROM
    Orders
WHERE
    EXTRACT(
        YEAR
        FROM
            OrderDate
    ) = 2020
GROUP BY
    TO_CHAR (OrderDate, 'MM')
ORDER BY
    month;

SELECT
    c.Customer_Name,
    p.Product_Name,
    o.Order_Date
FROM
    Orders o
    JOIN Customers c ON o.Customer_ID = c.Customer_ID
    JOIN Products p on o.Product_Id = p.Product_Id;

SELECT
    *
FROM
    Orders
WHERE
    Order_Date >= ADD_MONTHS (SYSDATE, -3);

SELECT
    c.Customer_Id
FROM
    Customers c
    LEFT JOIN Orders o on c.Customer_Id = o.Customer_Id
WHERE
    o.Customer_Id IS NULL;