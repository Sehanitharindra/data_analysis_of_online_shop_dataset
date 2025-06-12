

SELECT product_name AS "Product Name", 
		ROUND(AVG(rating), 2) AS "Average Rating"
FROM products
LEFT JOIN reviews ON products.product_id = reviews.product_id
GROUP BY product_name
ORDER BY AVG(rating) DESC
LIMIT 20

