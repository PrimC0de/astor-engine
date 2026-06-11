-- Verify: appschema
-- Requires: 

SELECT 1 FROM pg_extension WHERE extname = 'pgcrypto';
