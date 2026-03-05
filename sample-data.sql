-- =========================================
-- SAMPLE DATA
-- =========================================

INSERT INTO customers (customer_id, customer_name, email, city, created_at) VALUES
(1, 'Alice Johnson', 'alice@example.com', 'Sofia', '2025-01-10'),
(2, 'Bob Smith', 'bob@example.com', 'Plovdiv', '2025-02-05'),
(3, 'Charlie Brown', 'charlie@example.com', 'Varna', '2025-02-20');

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 1800.00),
(2, 'Keyboard', 'Electronics', 120.00),
(3, 'Coffee Beans', 'Grocery', 25.50),
(4, 'Office Chair', 'Furniture', 320.00);

INSERT INTO orders (order_id, customer_id, order_date, status, total_amount) VALUES
(1, 1, '2025-03-01', 'Completed', 1920.00),
(2, 1, '2025-03-10', 'Pending', 25.50),
(3, 2, '2025-03-12', 'Completed', 440.00);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1, 1800.00),
(2, 1, 2, 1, 120.00),
(3, 2, 3, 1, 25.50),
(4, 3, 2, 1, 120.00),
(5, 3, 4, 1, 320.00);
