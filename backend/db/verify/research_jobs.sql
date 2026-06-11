-- Verify: research_jobs
-- Requires: users

SELECT 1
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_name = 'research_jobs';
