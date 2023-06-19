CREATE OR REPLACE PROCEDURE UserRegister_Insert(
    _email          VARCHAR(8000),
    _firstName      VARCHAR(255),
	_lastName       VARCHAR(255),
    _userRoleId     INT,
    _companyName    VARCHAR(8000),
	_phoneNumber    VARCHAR(300),
    _address        VARCHAR(8000),
	_password		bytea,
	_saltPassword	bytea
) AS $$
BEGIN
    INSERT INTO Users(firstName, lastName,companyName,email,phoneNumber,address,password,saltPassword,userRoleId)
    VALUES (_firstName, _lastName, _companyName, _email, _phoneNumber,_address,_password,_saltpassword,_userRoleId);
END;
$$ LANGUAGE plpgsql;

