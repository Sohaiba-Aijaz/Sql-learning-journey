-- AND / OR: combining multiple conditions
-- Get all male users with salary greater than 50000
SELECT * FROM users WHERE gender = 'male' AND salary > 50000;

-- Get all users who are either male or have salary above 60000
SELECT * FROM users WHERE gender = 'male' OR salary > 60000;

-- IN: check if a value matches any in a list
-- Get users with specific ids
SELECT * FROM users WHERE id IN (1, 3, 5, 7);

-- ORDER BY: sorting results
-- Sort users by salary, highest first
SELECT * FROM users ORDER BY salary DESC;

-- Sort users by salary, lowest first
SELECT * FROM users ORDER BY salary ASC;

-- LIMIT: restrict number of results
-- Get only the top 3 highest paid users
SELECT * FROM users ORDER BY salary DESC LIMIT 3;

-- Get only the 3 lowest paid users
SELECT * FROM users ORDER BY salary ASC LIMIT 3;
