CREATE OR REPLACE FUNCTION get_event_by_id(_EventId INT)
RETURNS SETOF events AS $$
BEGIN
    RETURN QUERY SELECT * FROM Events e WHERE e.id = _EventId;
END;
$$ LANGUAGE plpgsql;
