-- Revert: refresh_tokens
-- Requires: 

BEGIN;

DROP TABLE IF EXISTS refresh_tokens;

COMMIT;
