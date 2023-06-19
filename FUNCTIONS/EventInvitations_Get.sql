CREATE OR REPLACE FUNCTION get_invited_people_event(_EventId INT)
RETURNS SETOF eventInvitation AS $$
BEGIN
    RETURN QUERY SELECT * FROM eventInvitation ei WHERE ei.eventid = _EventId;
END;
$$ LANGUAGE plpgsql;
