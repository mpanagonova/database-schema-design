-- =========================================
-- EXAMPLE QUERIES
-- =========================================

-- Orders with customer names
SELECT o.order_id, c.customer_name, o.order_date, o.status, o.total_amount
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;


-- Total spent per customer
SELECT c.customer_name, SUM(o.total_amount) AS total_spent
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;


-- Order items with product info
SELECT o.order_id, p.product_name, oi.quantity, oi.unit_price,
       (oi.quantity * oi.unit_price) AS line_total
FROM order_items oi
INNER JOIN orders o ON oi.order_id = o.order_id
INNER JOIN products p ON oi.product_id = p.product_id
ORDER BY o.order_id;


-- Customers with no orders
SELECT c.customer_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
