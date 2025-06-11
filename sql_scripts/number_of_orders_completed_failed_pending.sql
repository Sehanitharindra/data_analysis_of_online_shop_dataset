

SELECT COUNT(order_id) AS "Number of Orders", transaction_status AS "Status of Transaction"
FROM payment
GROUP BY transaction_status

