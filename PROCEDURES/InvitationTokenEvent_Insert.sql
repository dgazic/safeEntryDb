CREATE OR REPLACE PROCEDURE InvitationTokenEvent_Insert(
    EventId INT,
    InvitationToken VARCHAR(8000)
) AS $$
BEGIN
    INSERT INTO InvitationTokensEvents (eventId, invitationToken)
    VALUES (EventId, InvitationToken);
END;
$$ LANGUAGE plpgsql;

