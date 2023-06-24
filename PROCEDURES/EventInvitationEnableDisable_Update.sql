CREATE OR REPLACE PROCEDURE EventInvitationEnableDisable_Update(
    _guestId INT
) AS $$
BEGIN
    UPDATE eventInvitation
    SET active = NOT active
    WHERE id = _guestId;
END;
$$ LANGUAGE plpgsql;