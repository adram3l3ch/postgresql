DROP TABLE IF EXISTS basics.products_basic;

CREATE TABLE basics.products_basic (
	id SERIAL PRIMARY KEY,
	-- Max length 100 chars
	name VARCHAR(100) NOT NULL,
	description TEXT,
	stock INTEGER DEFAULT 0,
	total_views BIGINT DEFAULT 0,
	price NUMERIC(10,2) DEFAULT 0.0,
	is_active BOOLEAN DEFAULT true
);

INSERT INTO basics.products_basic
	(name,description,price,stock,total_views,is_active)
VALUES
	('Mary','lorem ipsum',50.25,25625,2566885,false),
	('Liz','lorem ipsum',20.5,123,4667646,true),
	('James','lorem ipsum',25,1234,78465,true);

SELECT * FROM basics.products_basic;
SELECT * FROM basics.products_basic WHERE is_active=true AND price<24 ORDER BY name;
