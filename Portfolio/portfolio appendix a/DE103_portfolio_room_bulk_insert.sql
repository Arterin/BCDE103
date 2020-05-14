USE GuestHousessrl0087

BULK INSERT room
FROM 'C:\Users\Sean\Downloads\DataFiles\room.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n');

SELECT * FROM room