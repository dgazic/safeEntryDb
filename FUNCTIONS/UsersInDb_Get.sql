CREATE OR REPLACE FUNCTION get_users_in_db(_Email VARCHAR(8000))
RETURNS TABLE (
	Id		INT,
    email	VARCHAR,
	userRoleId INT,
	lastName VARCHAR(8000),
	firstName VARCHAR(8000),
    password bytea,
    saltpassword bytea
) AS $$
BEGIN
    RETURN QUERY SELECT u.Id,u.email,u.userRoleId,u.lastName,u.firstName,u.password, u.saltpassword FROM Users u WHERE u.email = _Email;
END;
$$ LANGUAGE plpgsql;
