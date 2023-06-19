CREATE TABLE Events(
	id SERIAL PRIMARY KEY,
	name VARCHAR(4000) NOT NULL,
	description VARCHAR(4000) NULL,
	address		VARCHAR(4000) NOT NULL,
	eventstarts VARCHAR(4000) NOT NULL,
	organizerId INT NOT NULL
)


