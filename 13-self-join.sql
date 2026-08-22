-- Add a column to practice self join (referred_by relationship)
ALTER TABLE users ADD COLUMN referred_by INT;

-- Update some users to have a referrer
UPDATE users SET referred_by = 1 WHERE id = 2;
UPDATE users SET referred_by = 1 WHERE id = 3;

-- Self Join: show each user along with the name of who referred them
SELECT a.name AS user_name, b.name AS referred_by_name
FROM users a
LEFT JOIN users b ON a.referred_by = b.id;
