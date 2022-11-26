USE <DATABASE_NAME>; 
-- Declare change default delimiter to $
-- Depending on how you want to choose any character, here I choose $
DELIMITER $	

CREATE PROCEDURE <PROCEDURE_NAME>(
	IN <INPUT_PARAMETERS> int, 
    OUT <OUTPUT_PARAMETERS> decimal(10,2),
    OUT <OUTPUT_PARAMETERS> decimal(10,2)
)
BEGIN
    DECLARE count int default 0;	-- Initialize variable count with 0 value
    SET count = (SELECT COUNT(id) FROM products WHERE id = product_id);
    IF count > 0 THEN 	
		SET total = (SELECT SUM(price * quantity) 
					FROM order_details WHERE product_id = product_id);
		SET average = (SELECT AVG(price * quantity) 
					FROM order_details WHERE product_id = product_id);
	ELSE	
		SET total = 0;
        SET average = 0;
        SELECT  CONCAT('YOUR PARAMETER ', product_id, 'IS NOT EXISTS!!!') AS 'ERROR'; -- SHOW error
		
	END IF;		-- End of IF-ELSE
END $
 
DELIMITER ; 	-- Khai báo dấu phân cách trở lại mặc định là dấu chấm phẩy ;
