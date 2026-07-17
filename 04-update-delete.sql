-- Update a single user's salary
UPDATE users SET salary = 65000 WHERE id = 1;

-- Increase salary for all female users by 5000
UPDATE users SET salary = salary + 5000 WHERE gender = 'female';

-- Always SELECT first to check which rows will be affected
SELECT * FROM users WHERE salary < 40000;

-- Delete a specific user by id
DELETE FROM users WHERE id = 10;

-- Delete all users with salary below 40000
DELETE FROM users WHERE salary < 40000;
