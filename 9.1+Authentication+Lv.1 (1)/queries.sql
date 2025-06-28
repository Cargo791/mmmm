-- Create users table
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  full_name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  balance NUMERIC DEFAULT 0,
  btc_balance NUMERIC DEFAULT 0,
  eth_balance NUMERIC DEFAULT 0,
  sol_balance NUMERIC DEFAULT 0,
  bnb_balance NUMERIC DEFAULT 0,
  payment_status TEXT DEFAULT 'none',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Optional: Add a test user (for development)
INSERT INTO users (full_name, email, password)
VALUES ('Test User', 'test@example.com', 'test123')
ON CONFLICT (email) DO NOTHING;
