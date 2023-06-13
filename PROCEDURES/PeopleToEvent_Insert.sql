CREATE OR REPLACE PROCEDURE PeopleToEvent_Insert(
    firstName VARCHAR(255),
	lastName VARCHAR(255),
	eventId INT
) AS $$
BEGIN
    INSERT INTO InvitedPeopleEvent(firstName, lastName,eventId)
    VALUES (firstName, lastName, eventId);
END;
$$ LANGUAGE plpgsql;

