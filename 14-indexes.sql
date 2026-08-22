-- Create an index on the name column
CREATE INDEX idx_name ON users(name);

-- Check indexes on the table
SHOW INDEX FROM users;

-- Compare query performance using EXPLAIN
-- Before index (example on a non-indexed column)
EXPLAIN SELECT * FROM users WHERE name = 'Ali Khan';

-- Drop an index if no longer needed
-- DROP INDEX idx_name ON users;

-- Note: PRIMARY KEY and UNIQUE columns automatically get an index in MySQL,
-- even without manually creating one.
