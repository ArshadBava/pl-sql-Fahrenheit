DELIMITER $$

CREATE PROCEDURE convertCtoF(IN celcius FLOAT, OUT fahrenheit FLOAT)
BEGIN
    SET fahrenheit = (celcius * 9 / 5) + 32; 
END $$

DELIMITER ;

CALL convertCtoF(40, @fahrenheit);
SELECT @fahrenheit AS FahrenheitValue;
