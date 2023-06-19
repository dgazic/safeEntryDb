CREATE OR REPLACE PROCEDURE EventInvitation_Insert(
    _eventId			INT,
    _firstName			VARCHAR(8000),
	_lastName			VARCHAR(8000),
	_email				VARCHAR(8000),
	_phoneNumber		VARCHAR(4000),
	_invitationCode		VARCHAR(8000),
	_active				BOOLEAN

) AS $$
BEGIN
    INSERT INTO EventInvitation(eventId,firstName,lastName,email,phoneNumber, invitationCode,active)
    VALUES (_eventId, _firstName, _lastName, _email, _phoneNumber, _invitationCode,_active );
END;
$$ LANGUAGE plpgsql;

