-- Stored Procedure: Add a new user
DELIMITER $$

CREATE PROCEDURE AddUser(
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_gender ENUM('Male','Female','Other'),
    IN p_dob DATE,
    IN p_salary INT
)
BEGIN
    INSERT INTO users (name, email, gender, date_of_birth, salary)
    VALUES (p_name, p_email, p_gender, p_dob, p_salary);
END$$

DELIMITER ;

-- Call the procedure
-- CALL AddUser('Kiran Sharma', 'kiran@example.com', 'Female', '1994-06-15', 72000);


-- Stored Procedure: Update a user's salary
DELIMITER $$

CREATE PROCEDURE UpdateSalary(
    IN p_id INT,
    IN p_new_salary INT
)
BEGIN
    UPDATE users SET salary = p_new_salary WHERE id = p_id;
END$$

DELIMITER ;

-- Call the procedure
-- CALL UpdateSalary(1, 90000);


-- Stored Procedure: Delete a user by id
DELIMITER $$

CREATE PROCEDURE delete_user(
    IN p_id INT
)
BEGIN
    DELETE FROM users WHERE id = p_id;
END$$

DELIMITER ;

-- Call the procedure
-- CALL delete_user(5);


-- View existing procedures
SHOW PROCEDURE STATUS WHERE Db = 'firstsql';

-- Drop a procedure if needed
-- DROP PROCEDURE IF EXISTS delete_user;
