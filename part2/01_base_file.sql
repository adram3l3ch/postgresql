CREATE EXTENSION IF NOT EXISTS pgcrypto;
DROP TABLE IF EXISTS products;

CREATE TABLE products (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	name TEXT NOT NULL,
	category TEXT NOT NULL,
	price NUMERIC(10,2) NOT NULL CHECK (price>=0),
	stock INTEGER NOT NULL DEFAULT 0 CHECK (stock>=0),
	is_active BOOLEAN NOT NULL DEFAULT true,
	sku TEXT UNIQUE,
	description TEXT,
	created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO products (
    name,
    category,
    price,
    stock,
    is_active,
    sku,
    description
)
VALUES
(
    'iPhone 16',
    'Electronics',
    79999.00,
    25,
    true,
    'ELEC-001',
    'Apple iPhone 16 with 128GB storage.'
),
(
    'Samsung Galaxy S25',
    'Electronics',
    84999.00,
    15,
    true,
    'ELEC-002',
    'Samsung flagship smartphone with AMOLED display.'
),
(
    'Sony WH-1000XM5',
    'Accessories',
    24990.00,
    40,
    true,
    'ACC-001',
    'Wireless noise cancelling headphones.'
),
(
    'Logitech MX Master 3S',
    'Accessories',
    8995.00,
    30,
    true,
    'ACC-002',
    'Wireless ergonomic mouse for productivity.'
),
(
    'Mechanical Keyboard',
    'Peripherals',
    5499.00,
    0,
    false,
    'PER-001',
    'RGB mechanical keyboard with blue switches.'
);

-- SELECT * as status FROM products;
-- SELECT name,price,is_active as status FROM products;
SELECT name,price,is_active as status FROM products WHERE is_active=true;
SELECT name,price,is_active as status FROM products WHERE price BETWEEN 0 AND 6000;

-- =	Equal	
-- >	Greater than	
-- <	Less than	
-- >=	Greater than or equal	
-- <=	Less than or equal	
-- <>	Not equal. Note: In some versions of SQL this operator may be written as !=	
-- BETWEEN	Between a certain range	- BETWEEN 10 AND 20
-- LIKE	Search for a pattern	- ILIKE - CASE SENSITIVE - % - any char any number , _ - any char only one.
-- IN	To specify multiple possible values for a column - IN ('a','b')