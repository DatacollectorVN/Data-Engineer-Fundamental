SET @name_customer := 'Ines';
SELECT @cust_id := customer_id FROM store.customers WHERE first_name = @name_customer;
SELECT * FROM store.customers WHERE customer_id = @cust_id;