USE GuestHousessrl0087

BULK INSERT room_type
FROM 'C:\Users\Sean\Downloads\DataFiles\room_type.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n');

SELECT * FROM room_type