-- MIGRATE PHASE
-- Backfill encrypted_email in safe batches.
-- In production this should run as an idempotent job with throttling.

UPDATE customers
SET encrypted_email = CONCAT('encrypted:', email)
WHERE encrypted_email IS NULL
  AND email IS NOT NULL;

-- Validation:
-- SELECT COUNT(*) FROM customers WHERE email IS NOT NULL AND encrypted_email IS NULL;
