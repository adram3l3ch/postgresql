DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	nickname TEXT,
	bio TEXT,
	score INTEGER
);

INSERT INTO basics.value_examples (nickname,bio,score)
VALUES
	(null,'learning postgres',10),
	('John','',0),
	('','empty nickname',20);

SELECT * FROM basics.value_examples
WHERE nickname IS NULL;

SELECT * FROM basics.value_examples
WHERE score=0;