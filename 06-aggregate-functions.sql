-- COUNT
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM users WHERE gender = 'male';

-- MIN, MAX with alias
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

-- SUM, AVG
SELECT SUM(salary) AS sum_salary FROM users;
SELECT AVG(salary) AS avg_salary FROM users;

-- GROUP BY with aggregate functions
SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;
SELECT gender, COUNT(*) AS total_users FROM users GROUP BY gender;

-- Combining COUNT, MIN, MAX with GROUP BY
SELECT gender, COUNT(*) AS total_users, MIN(salary) AS min_salary, MAX(salary) AS max_salary 
FROM users GROUP BY gender;

-- HAVING: filtering grouped results
SELECT gender, AVG(salary) AS avg_salary 
FROM users GROUP BY gender HAVING AVG(salary) > 50000;

-- Finding oldest date of birth
SELECT MIN(date_of_birth) AS min_date FROM users;

-- Subquery: users earning more than average salary
SELECT name, salary FROM users 
WHERE salary > (SELECT AVG(salary) FROM users);
