CREATE TABLE EventInvitation(
	id SERIAL		PRIMARY KEY,
	eventId			INT NOT NULL,
	firstName		VARCHAR(4000) NOT NULL,
	lastName		VARCHAR(4000) NOT NULL,
	email 			VARCHAR(8000) NOT NULL,
	phoneNumber		VARCHAR(4000) NOT NULL,
	invitationCode 	VARCHAR(8000) NOT NULL,
	active			BOOLEAN
);

CREATE INDEX idx_invitationCode ON EventInvitation (invitationCode);
