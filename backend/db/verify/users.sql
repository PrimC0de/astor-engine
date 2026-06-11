-- Verify: users
-- Requires: appschema

SELECT 1
FROM information_schema.tables
WHERE table_schema = 'public'
  AND table_name = 'users';
