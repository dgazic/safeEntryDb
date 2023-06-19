CREATE OR REPLACE FUNCTION check_invitation(_EventId INT, _InvitationCode VARCHAR(8000))
RETURNS SETOF eventInvitation AS $$
BEGIN
    RETURN QUERY SELECT * FROM eventInvitation ei WHERE ei.eventid = _EventId AND ei.invitationCode = _InvitationCode;
END;
$$ LANGUAGE plpgsql;
