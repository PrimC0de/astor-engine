-- Revert: users
-- Requires: refresh_tokens research_jobs

BEGIN;

DROP TABLE IF EXISTS users;

COMMIT;
