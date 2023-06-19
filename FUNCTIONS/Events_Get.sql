CREATE OR REPLACE FUNCTION get_events(_OrganizerId INT)
RETURNS SETOF events AS $$
BEGIN
    RETURN QUERY SELECT * FROM Events e WHERE e.organizerId = _OrganizerId;
END;
$$ LANGUAGE plpgsql;
