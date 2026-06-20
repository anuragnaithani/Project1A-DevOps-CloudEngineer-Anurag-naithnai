-- CONTRACT PHASE
-- Remove old plain-text email column only after all services use encrypted_email.
-- This phase requires separate approval because it is not backward compatible.

ALTER TABLE customers
DROP COLUMN email;
