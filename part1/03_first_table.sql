DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students (	
	id SERIAL PRIMARY KEY,
	name TEXT NOT NULL,
	email TEXT NOT NULL UNIQUE,
	age INTEGER CHECK(age>=18),
	created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.students (name, email, age)
VALUES ('John Doe','Johndoe@gmail.com',25);

INSERT INTO basics.students (name, email, age)
VALUES ('Jane Doe','janedoe@gmail.com',30);

SELECT * FROM basics.students;