CREATE OR REPLACE FUNCTION get_events(_OrganizerId INT)
RETURNS TABLE (
    id INT,
    name VARCHAR,
    description VARCHAR,
    address VARCHAR,
    eventstarts VARCHAR,
    organizerId INT,
    companyName VARCHAR
) AS $$
DECLARE
    companyName VARCHAR;
BEGIN
    IF _OrganizerId = 0 THEN
        RETURN QUERY SELECT e.id,E.NAME,E.description,E.ADDRESS,E.eventStarts,E.organizerId,u.companyName FROM Events e INNER JOIN users u ON u.id = e.organizerid;
    ELSE
		companyName := null;
        RETURN QUERY SELECT e.*,companyName FROM Events e WHERE e.organizerId = _OrganizerId;
    END IF;
END;
$$ LANGUAGE plpgsql;