-- EXPAND PHASE: Add new encrypted_email column
-- Backward compatible: App V(N-1) will ignore this column

ALTER TABLE customer_profiles 
ADD COLUMN encrypted_email BYTEA;

-- Add index for performance on encrypted lookups
CREATE INDEX CONCURRENTLY idx_customer_encrypted_email 
ON customer_profiles (encrypted_email);

-- Audit log entry for RBI compliance traceability
INSERT INTO schema_audit_log (migration_id, description, executed_by, phase)
VALUES ('V2.0', 'Add encrypted email column', current_user, 'EXPAND');
