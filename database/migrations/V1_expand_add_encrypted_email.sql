-- EXPAND PHASE
-- Add new encrypted email column without breaking old application version.

ALTER TABLE customers
ADD COLUMN encrypted_email VARCHAR(512);

-- Old column remains active during this phase.
-- Application version N and N-1 can both run safely.
