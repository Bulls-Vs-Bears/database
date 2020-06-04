DROP TABLE IF EXISTS bvb_accounts.users CASCADE;

-- user table schema --
CREATE TABLE bvb_accounts.user(
  user_id bigserial PRIMARY KEY,
  user_name VARCHAR (30) UNIQUE NOT NULL,
  user_password VARCHAR (60) NOT NULL,
  user_email VARCHAR (60) UNIQUE NOT NULL,
  user_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  user_updated_at TIMESTAMP NULL,
  user_balance FLOAT NULL,
  user_currency_code VARCHAR (3) NULL
);
