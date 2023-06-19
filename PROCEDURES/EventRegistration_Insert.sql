CREATE OR REPLACE PROCEDURE EventRegistration_Insert(
    _name	          VARCHAR(4000),
    _description      VARCHAR(8000),
	_address		  VARCHAR(4000),
	_eventsstarts     VARCHAR(8000),
	_organizerid	  INT

) AS $$
BEGIN
    INSERT INTO Events(name,description,address,eventstarts,organizerId)
    VALUES (_name, _description,_address _eventsstarts, _organizerid);
END;
$$ LANGUAGE plpgsql;

