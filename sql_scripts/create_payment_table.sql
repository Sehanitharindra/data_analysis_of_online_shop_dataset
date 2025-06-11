CREATE TABLE payment(payment_id INT,
					order_id INT,
					payment_method VARCHAR(15),
					amount DECIMAL(10,2),
					transaction_status VARCHAR(15))