USE GuestHousessrl0087

BULK INSERT rate
FROM 'C:\Users\Sean\Downloads\DataFiles\rate.csv'
WITH (FIRSTROW = 2,
    FIELDTERMINATOR = ',',
	ROWTERMINATOR = '\n');

SELECT * FROM rate