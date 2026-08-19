-- INNER JOIN: shows only matching rows from both tables
SELECT users.name, addresses.city
FROM users
INNER JOIN addresses ON users.id = addresses.user_id;

-- LEFT JOIN: shows all rows from left table (users), 
-- even if there's no match in addresses (shows NULL)
SELECT users.name, addresses.city
FROM users
LEFT JOIN addresses ON users.id = addresses.user_id;

-- RIGHT JOIN: shows all rows from right table (addresses),
-- even if there's no match in users
SELECT users.name, addresses.city
FROM users
RIGHT JOIN addresses ON users.id = addresses.user_id;

-- UNION: combines results from two queries, removes duplicates
SELECT name FROM users WHERE gender = 'male'
UNION
SELECT name FROM users WHERE salary > 50000;

-- UNION ALL: combines results from two queries, keeps duplicates
SELECT name FROM users WHERE gender = 'male'
UNION ALL
SELECT name FROM users WHERE salary > 50000;
