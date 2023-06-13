CREATE OR REPLACE FUNCTION get_events(_OrganizerId INT)
RETURNS TABLE (
    id INT,
    name VARCHAR(8000),
	description VARCHAR(8000),
    organizerId INT
) AS $$
BEGIN
    RETURN QUERY SELECT e.id, e.name, e.description, e.organizerId FROM Events e WHERE e.organizerId = _OrganizerId;
END;
$$ LANGUAGE plpgsql;
