-- ROLLUP: adds a grand total row after the grouped results
SELECT gender, COUNT(*) AS total_users
FROM users
GROUP BY gender WITH ROLLUP;

-- Note: The extra row with gender = NULL at the end represents 
-- the grand total (sum of all groups combined).

-- Another example: total salary by gender, with grand total
SELECT gender, SUM(salary) AS total_salary
FROM users
GROUP BY gender WITH ROLLUP;
