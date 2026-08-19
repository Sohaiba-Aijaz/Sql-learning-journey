USE firstsql;

-- Create addresses table with Foreign Key linked to users table
DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    CONSTRAINT fk_user FOREIGN KEY (user_id) 
        REFERENCES users(id) ON DELETE CASCADE
);

-- Insert addresses linked to existing users
INSERT INTO addresses (user_id, street, city, state) 
VALUES (1, 'Main Boulevard', 'Karachi', 'Sindh');

INSERT INTO addresses (user_id, street, city, state) 
VALUES (2, 'Model Town', 'Lahore', 'Punjab');

INSERT INTO addresses (user_id, street, city, state) 
VALUES (3, 'F-10 Sector', 'Islamabad', 'Islamabad');

-- Test ON DELETE CASCADE: deleting a user should also delete their address
DELETE FROM users WHERE id = 1;
SELECT * FROM addresses;

-- Test Foreign Key constraint: inserting an invalid user_id should fail
-- INSERT INTO addresses (user_id, street, city, state) 
-- VALUES (999, 'Fake Street', 'Nowhere', 'Nowhere');
