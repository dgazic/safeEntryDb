CREATE OR REPLACE PROCEDURE EventRegistration_Insert(
    Name VARCHAR(255),
    Description VARCHAR(255),
	OrganizerId INTEGER 
) AS $$
BEGIN
    INSERT INTO Events (Name, Description,OrganizerId)
    VALUES (Name, Description,OrganizerId);
END;
$$ LANGUAGE plpgsql;