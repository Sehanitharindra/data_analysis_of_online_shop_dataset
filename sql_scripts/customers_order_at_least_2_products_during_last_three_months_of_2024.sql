SELECT first_name AS "First Name", 
		last_name AS "Last Name", 
		order_date AS "Order Date", 
		products_count AS "Number of Products Ordered"
FROM (SELECT first_name, last_name, order_id, order_date, COUNT(product_id) AS products_count
		FROM (SELECT first_name, last_name, orders.order_id, order_date, products.product_id, product_name
			  FROM customer
			  LEFT JOIN orders ON customer.customer_id = orders.customer_id
			  LEFT JOIN order_items ON orders.order_id = order_items.order_id
			  LEFT JOIN products ON order_items.product_id = products.product_id)
		GROUP BY order_id, first_name, last_name, order_date
		HAVING COUNT(product_id) >= 2
		ORDER BY order_id)
WHERE order_date >= '2024-10-01' AND order_date <= '2024-12-31'
ORDER BY order_id