-- Create a view combining users and their addresses
CREATE VIEW user_address_view AS
SELECT users.name, users.email, addresses.city, addresses.state
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

-- Use the view like a normal table
SELECT * FROM user_address_view;

-- Update a view (redefine it with new columns/logic)
CREATE OR REPLACE VIEW user_address_view AS
SELECT users.name, users.email, addresses.street, addresses.city, addresses.state
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

-- Delete (drop) a view
DROP VIEW IF EXISTS user_address_view;
