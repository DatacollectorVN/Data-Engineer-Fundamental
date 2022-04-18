DELIMITER $$

DROP PROCEDURE IF EXISTS get_customer_points;
CREATE  PROCEDURE get_customer_points(start INT, end INT)
-- Can use (src: https://freetuts.net/tao-mysql-stored-procedure-dau-tien-279.html)
-- CREATE DEFINER=`root`@`localhost` PROCEDURE get_customer_points(start INT, end INT)
BEGIN
	DECLARE extra_value INT;
    SET extra_value := 100; -- can use `SET extra_value = 100;`
    SELECT * FROM store.customers WHERE points BETWEEN start AND end + extra_value;
END
$$ 

DELIMITER ;

CALL get_customer_points (900, 2000) ;