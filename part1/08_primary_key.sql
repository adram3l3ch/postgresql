DROP TABLE IF EXISTS basics.courses;

CREATE TABLE basics.courses (
	id SERIAL PRIMARY KEY,
	title TEXT NOT NULL,
	price NUMERIC(10,2) NOT NULL DEFAULT 0,
	created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.courses (title, price)
VALUES ('DSA',2500.25);

SELECT * FROM basics.courses;