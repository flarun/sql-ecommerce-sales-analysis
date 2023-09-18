-- Replace 'start_date' and 'end_date' with the actual start and end dates you want to analyze.
SELECT SUM(od.quantity * od.unit_price) AS total_revenue
FROM OrderDetails od
JOIN Orders o ON od.order_id = o.order_id
WHERE o.order_date BETWEEN 'start_date' AND 'end_date';

-- Top-selling products
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM Products p
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Top-selling categories
SELECT c.category_name, SUM(od.quantity) AS total_sold
FROM Categories c
JOIN Products p ON c.category_id = p.category_id
JOIN OrderDetails od ON p.product_id = od.product_id
GROUP BY c.category_name
ORDER BY total_sold DESC;

-- Determine customer demographics based on purchase history:
SELECT
    customer_id,
    customer_name,
    email,
    birthdate,
    registration_date,
    COUNT(o.order_id) AS total_orders,
    SUM(od.quantity * od.unit_price) AS total_spent
FROM Customers c
LEFT JOIN Orders o ON c.customer_id = o.customer_id
LEFT JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name, c.email, c.birthdate, c.registration_date;

-- Find patterns in seasonal sales

-- Total sales by month
SELECT
    EXTRACT(MONTH FROM o.order_date) AS month,
    SUM(od.quantity * od.unit_price) AS monthly_sales
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY month
ORDER BY month;

-- Total sales by year
SELECT
    EXTRACT(YEAR FROM o.order_date) AS year,
    SUM(od.quantity * od.unit_price) AS yearly_sales
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY year
ORDER BY year;

-- Calculate average order value
SELECT AVG(total_amount) AS avg_order_value
FROM Orders;

-- Identify high-value customers:
SELECT
    c.customer_id,
    c.customer_name,
    c.email,
    SUM(od.quantity * od.unit_price) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN OrderDetails od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name, c.email
HAVING SUM(od.quantity * od.unit_price) >= 1000; -- Adjust the threshold as needed
