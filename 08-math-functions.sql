-- Date difference
SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_alive FROM users;

-- Rounding functions
SELECT name, salary, 
    ROUND(salary) AS rounded, 
    FLOOR(salary) AS floored, 
    CEIL(salary) AS ceiled 
FROM users;

-- MOD function
SELECT id, MOD(id, 2) AS remainder FROM users;

-- IF function
SELECT name, gender, IF(gender = 'female', 'Yes', 'No') AS is_female FROM users;
