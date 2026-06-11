-- Revert: research_jobs
-- Requires: reports refresh_tokens

BEGIN;

DROP TABLE IF EXISTS research_jobs;

COMMIT;
