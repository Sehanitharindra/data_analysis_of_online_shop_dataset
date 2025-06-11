
SELECT customer.first_name AS "First Name", 
		customer.last_name AS "Last Name", 
		STRING_AGG(products.product_name, ', ') AS "Product List"
FROM customer
LEFT JOIN orders ON orders.customer_id = customer.customer_id
LEFT JOIN order_items ON orders.order_id = order_items.order_id
LEFT JOIN products ON order_items.product_id = products.product_id
GROUP BY customer.customer_id, customer.first_name, customer.last_name


