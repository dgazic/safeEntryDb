CREATE OR REPLACE FUNCTION users_by_userRole(_UserRoleId INT)
RETURNS SETOF users AS $$
BEGIN
    IF _UserRoleId = 3 THEN
        RETURN QUERY SELECT * FROM Users u;
    END IF;
    
    IF _UserRoleId = 1 THEN
        RETURN QUERY SELECT * FROM Users u WHERE u.userRoleId = 2;
    END IF;

    RETURN;
END;
$$ LANGUAGE plpgsql;