-- Subquery in WHERE clause: users who have an address
SELECT name FROM users WHERE id IN (SELECT user_id FROM addresses);

-- Subquery with MAX: user with the highest salary
SELECT * FROM users WHERE salary = (SELECT MAX(salary) FROM users);

-- DISTINCT: unique list of cities
SELECT DISTINCT city FROM addresses;

-- Subquery with MIN: users earning more than the lowest salary
SELECT name FROM users WHERE salary > (SELECT MIN(salary) FROM users);

-- Subquery with AVG: count of users earning above average salary
SELECT COUNT(*) FROM users WHERE salary > (SELECT AVG(salary) FROM users);

-- Nested subquery: users living in cities with more than 1 user
SELECT name FROM users 
WHERE id IN (
    SELECT user_id FROM addresses 
    WHERE city IN (
        SELECT city FROM addresses GROUP BY city HAVING COUNT(*) > 1
    )
);
