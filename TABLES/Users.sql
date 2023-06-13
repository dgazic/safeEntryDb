CREATE TABLE Users(
	id SERIAL PRIMARY KEY,
	firstName VARCHAR(4000) NOT NULL,
	lastName VARCHAR(4000) NOT NULL,
	companyName VARCHAR(4000) NULL,
	email VARCHAR(8000) NOT NULL,
	phoneNumber VARCHAR(8000) NOT NULL,
	address VARCHAR(8000) NULL,
	password bytea NULL,
	saltPassword bytea NULL,
	userRoleId INT
)

