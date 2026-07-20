-- Adding constraints to existing table
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE(email);
ALTER TABLE users ADD CONSTRAINT chk_salary CHECK (salary > 0);
ALTER TABLE users ADD CONSTRAINT chk_dob CHECK (date_of_birth > '1920-01-01');
