CREATE OR REPLACE FUNCTION get_event_by_id(_EventId INT)
RETURNS TABLE (
    id INT,
    NAME VARCHAR,
    DESCRIPTION VARCHAR,
    ADDRESS VARCHAR,
    eventstarts VARCHAR,
    organizerId INT,
    peopleInvited INT
) AS $$
DECLARE
    peopleInvited INT;
BEGIN
	SELECT COUNT(*) INTO peopleInvited FROM eventinvitation WHERE eventId = _EventId;
    RETURN QUERY SELECT e.id,e.NAME,e.DESCRIPTION,e.ADDRESS,e.eventstarts,e.organizerId,peopleInvited FROM Events e WHERE e.id = _EventId;
END;
$$ LANGUAGE plpgsql;
