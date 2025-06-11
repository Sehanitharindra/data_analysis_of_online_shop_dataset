
SELECT first_name AS "First Name", 
		last_name AS "Last Name", 
		total_cost_of_orders AS "Total Cost for Orders"
FROM (SELECT customer_id, SUM(total_price) AS total_cost_of_orders
		FROM orders
		GROUP BY customer_id
		ORDER BY customer_id) total_cost
JOIN customer ON customer.customer_id = total_cost.customer_id
ORDER BY total_cost_of_orders DESC

