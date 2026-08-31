-- Create a log table to track user activity
CREATE TABLE user_logs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    action VARCHAR(50),
    log_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Trigger: automatically log every time a new user is added
DELIMITER $$

CREATE TRIGGER after_user_insert
AFTER INSERT ON users
FOR EACH ROW
BEGIN
    INSERT INTO user_logs (user_id, action)
    VALUES (NEW.id, 'User Added');
END$$

DELIMITER ;

-- Test the trigger by inserting a new user
-- INSERT INTO users (name, email, gender, salary) 
-- VALUES ('Zain', 'zain@example.com', 'Male', 55000);

-- Check the log table to see if the trigger worked automatically
SELECT * FROM user_logs;

-- View all triggers in the database
SHOW TRIGGERS;

-- Drop a trigger if needed
-- DROP TRIGGER IF EXISTS after_user_insert;
