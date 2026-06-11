-- Verify: refresh_tokens
-- Requires: users

SELECT 1
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_name = 'refresh_tokens';
