CREATE TABLE InvitationTokensEvents (
  eventId INT NOT NULL,
  invitationToken VARCHAR(8000) NOT NULL,
  FOREIGN KEY (eventId) REFERENCES events(id)
);