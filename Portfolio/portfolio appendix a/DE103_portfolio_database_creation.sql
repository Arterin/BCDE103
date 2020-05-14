CREATE DATABASE GuestHousessrl0087;
USE GuestHousessrl0087;

CREATE TABLE calendar (
	i VARCHAR(11) PRIMARY KEY
);

CREATE TABLE guest (
	id INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(50)
);

CREATE TABLE room_type (
	id VARCHAR(6) PRIMARY KEY,
	description VARCHAR(100)
);

CREATE TABLE room (
	id INT PRIMARY KEY,
	room_type VARCHAR(6) FOREIGN KEY REFERENCES room_type(id),
	max_occupancy INT
);

CREATE TABLE rate (
	room_type VARCHAR(6) FOREIGN KEY REFERENCES room_type(id),
	occupancy INT,
	amount DECIMAL(10,2),
	PRIMARY KEY(occupancy,room_type)
);

CREATE TABLE booking (
	booking_id INT PRIMARY KEY,
	booking_date VARCHAR(10),
	room_no INT FOREIGN KEY REFERENCES room(id),
	guest_id INT FOREIGN KEY REFERENCES guest(id),
	occupants INT,
	room_type_requested VARCHAR(6),
	FOREIGN KEY(occupants,room_type_requested) REFERENCES rate(occupancy,room_type),
	nights INT,
	arrival_time VARCHAR(5)
);

CREATE TABLE extra (
	extra_id INT PRIMARY KEY,
	booking_id INT FOREIGN KEY REFERENCES booking(booking_id),
	description VARCHAR(50),
	amount DECIMAL(10,2)
);