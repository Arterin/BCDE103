USE GuestHousessrl0087

BULK INSERT guest
FROM 'C:\Users\Sean\Downloads\DataFiles\guest.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n');

SELECT * FROM guest