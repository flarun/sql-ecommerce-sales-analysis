-- Insert sample data into the Customers table
INSERT INTO Customers (customer_id, customer_name, email, birthdate, registration_date)
VALUES
    (1, 'John Doe', 'john@example.com', '1985-03-15', '2022-01-10'),
    (2, 'Jane Smith', 'jane@example.com', '1990-07-22', '2022-02-05'),
    (3, 'Bob Johnson', 'bob@example.com', '1980-11-30', '2022-03-20');

-- Insert sample data into the Products table
INSERT INTO Products (product_id, product_name, category_id, price, description)
VALUES
    (1, 'Product A', 101, 19.99, 'Description of Product A'),
    (2, 'Product B', 102, 29.99, 'Description of Product B'),
    (3, 'Product C', 101, 9.99, 'Description of Product C');

-- Insert sample data into the Orders table
INSERT INTO Orders (order_id, customer_id, order_date, total_amount)
VALUES
    (1001, 1, '2022-04-05', 49.98),
    (1002, 2, '2022-04-10', 59.98),
    (1003, 1, '2022-04-15', 19.99);

-- Insert sample data into the OrderDetails table
INSERT INTO OrderDetails (order_detail_id, order_id, product_id, quantity, unit_price)
VALUES
    (2001, 1001, 1, 2, 19.99),
    (2002, 1001, 2, 1, 29.99),
    (2003, 1002, 2, 2, 29.99),
    (2004, 1003, 3, 1, 9.99);