CREATE OR REPLACE FUNCTION get_users_in_db(_Email VARCHAR(8000))
RETURNS TABLE (
    email VARCHAR,
    password bytea,
    saltpassword bytea
) AS $$
BEGIN
    RETURN QUERY SELECT u.email,u.password, u.saltpassword FROM Users u WHERE u.email = _Email;
END;
$$ LANGUAGE plpgsql;
