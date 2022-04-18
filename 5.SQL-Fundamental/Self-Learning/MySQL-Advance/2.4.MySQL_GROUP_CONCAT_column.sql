SELECT GROUP_CONCAT(first_name, last_name SEPERATOR ' ') AS 'full_name' 
FROM store.customers
GROUP BY first_name