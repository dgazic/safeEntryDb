CREATE TABLE Events (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	description VARCHAR(255) NOT NULL,
	organizerId INT NOT NULL,
	FOREIGN KEY (organizerId) REFERENCES organizers(id)
)