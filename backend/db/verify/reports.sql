-- Verify: reports
-- Requires: research_jobs

SELECT 1
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_name = 'reports';
