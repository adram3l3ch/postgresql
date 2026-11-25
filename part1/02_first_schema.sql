CREATE SCHEMA IF NOT EXISTS basics;

CREATE EXTENSION IF NOT EXISTS pgcrypto;

SELECT schema_name
FROM information_schema.schemata -- print schemas
ORDER BY schema_name

-- psql -U postgres -d postgresql_part1 -f ./part1/02_first_schema.sql 