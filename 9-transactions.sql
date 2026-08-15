-- Disable autocommit to control transactions manually
SET autocommit = 0;

-- Example: update a user's salary
UPDATE users SET salary = salary + 10000 WHERE id = 1;

-- Check the change
SELECT * FROM users WHERE id = 1;

-- Undo the change (if not satisfied)
ROLLBACK;

-- OR, to save the change permanently
-- COMMIT;

-- Note: ROLLBACK only works before COMMIT is run.
-- Once committed, changes become permanent.
