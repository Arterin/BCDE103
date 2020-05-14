
USE GuestHousessrl0087

BULK INSERT booking
FROM 'C:\Users\Sean\Downloads\DataFiles\booking.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n');

SELECT * FROM booking