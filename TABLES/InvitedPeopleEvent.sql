CREATE TABLE InvitedPeopleEvent (
  id SERIAL PRIMARY KEY,
  firstName VARCHAR(255) NOT NULL,
  lastName VARCHAR(255) NOT NULL,
  eventId INTEGER NOT NULL,
  FOREIGN KEY (eventId) REFERENCES events(id)
);