-- Count of users by gender
SELECT gender, COUNT(*) AS total_users
FROM users
GROUP BY gender;

-- Count of users by city
SELECT city, COUNT(*) AS total_users
FROM addresses
GROUP BY city;

-- Genders with average salary greater than 60000
SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender
HAVING AVG(salary) > 60000;

-- Cities with 2 or more users
SELECT city, COUNT(*) AS total_users
FROM addresses
GROUP BY city
HAVING COUNT(*) >= 2;

-- Genders with total salary greater than 300000
SELECT gender, SUM(salary) AS total_salary
FROM users
GROUP BY gender
HAVING SUM(salary) > 300000;
