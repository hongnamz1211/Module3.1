USE classicModels;
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN
	SELECT * FROM customers;
END;
DELIMITER ;

CALL findAllCustomers;

DELIMITER //
DROP PROCEDURE IF EXISTS findAllCustomers //

CREATE PROCEDURE findAllCustomers()
BEGIN
	SELECT * FROM customers;
END //

--- [Thực hành] Truyền tham số vào Store Procedure

DELIMITER //
-- DROP PROCEDURE IF EXISTS getCusById//
CREATE PROCEDURE getCusById(IN cusNum INT(11))
BEGIN
  SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ;

CALL getCusById(175);

--- OUT

DELIMITER //
CREATE PROCEDURE GetCustomersCountByCity(IN in_city VARCHAR(50), OUT total INT)
BEGIN
SELECT COUNT(customerNumber)
INTO total
FROM customers
WHERE city = in_city;
END//
DELIMITER ;

CALL GetCustomersCountByCity('Lyon', @total);
SELECT @total;

--- INOUT

DELIMITER //
CREaTE PROCEDURE SetCounter(INOUT count INT, IN inc INT)
BEGIN
SET count = count + inc;
END//
DELIMITER ;

SET @count = 1;
CALL SETCounter(@count,1);
CALL SETCounter(@count,1);
CALL SETCounter(@count,5);
SELECT @count;
