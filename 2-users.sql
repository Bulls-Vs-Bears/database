-- Create reader group
CREATE ROLE readaccess;
GRANT USAGE ON SCHEMA bvb_accounts TO readaccess;
ALTER DEFAULT PRIVILEGES IN SCHEMA bvb_accounts GRANT SELECT ON TABLES TO readaccess;
-- GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA public to www;
-- GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA bvb_accounts to readaccess;
-- Create Writer Group
CREATE ROLE writeaccess;
GRANT USAGE ON SCHEMA bvb_accounts TO writeaccess;
ALTER DEFAULT PRIVILEGES IN SCHEMA bvb_accounts GRANT SELECT, INSERT, UPDATE ON TABLES TO writeaccess;
-- GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA bvb_accounts to writeaccess;

-- Create Deletion Group
CREATE ROLE deleteaccess;
GRANT USAGE ON SCHEMA bvb_accounts TO deleteaccess;
ALTER DEFAULT PRIVILEGES IN SCHEMA bvb_accounts GRANT SELECT, DELETE ON TABLES TO deleteaccess;
-- GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA bvb_accounts to deleteaccess;

-- bvb reader
DROP USER IF EXISTS bvb_reader;
CREATE USER bvb_reader WITH PASSWORD 'reader123';
GRANT readaccess TO bvb_reader;

-- bvb writer
DROP USER IF EXISTS bvb_writer;
CREATE USER bvb_writer WITH PASSWORD 'writer123';
GRANT writeaccess TO bvb_writer;

-- bvb remover
DROP USER IF EXISTS bvb_remover;
CREATE USER bvb_remover WITH PASSWORD 'remover123';
GRANT deleteaccess TO bvb_remover;
