
USE GuestHousessrl0087

BULK INSERT calendar
FROM 'C:\Users\Sean\Downloads\DataFiles\calendar.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n');

SELECT * FROM calendar