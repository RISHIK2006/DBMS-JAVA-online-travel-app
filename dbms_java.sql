create database dbms_java;
use dbms_java;
CREATE TABLE User_Account (
    Account_ID INT PRIMARY KEY ,
    Username VARCHAR(255),
    Email_id VARCHAR(255),
    Phone_number VARCHAR(20),
    Password VARCHAR(255)
);
INSERT INTO User_Account (account_id,Username, Email_id, Phone_number, Password) 
VALUES 
(1,'user1', 'user1@gmail.com', '1234567890', 'password1'),
(2,'user2', 'user2@gmail.com', '9876543210', 'password2'),
(3,'user3', 'user3@gmail.com', '5551234567', 'password3'),
(4,'user4', 'user4@gmail.com', '9998887776', 'password4');

CREATE TABLE Payment (
    Payment_ID INT PRIMARY KEY,
    Payment_mode VARCHAR(50),
    Status VARCHAR(50),
    Amount int,
    Confirmation_code VARCHAR(100),
    Account_ID INT,
    FOREIGN KEY (Account_ID) REFERENCES User_Account(Account_ID)
);
INSERT INTO Payment (Payment_ID,Payment_mode, Status, Amount, Confirmation_code, Account_ID)
VALUES 
(1,'Credit Card', 'Success', 100.00, 'CONF123', 1),
(2,'PayPal', 'Pending', 50.00, 'CONF456', 2),
(3,'Debit Card', 'Success', 75.00, 'CONF789', 3),
(4,'Credit Card', 'Failed', 30.00, 'CONF999', 4);


CREATE TABLE Review (
    Review_ID INT PRIMARY KEY ,
    Review TEXT,
    Rating int,
    Account_ID INT,
    FOREIGN KEY (Account_ID) REFERENCES User_Account(Account_ID)
);
INSERT INTO Review (review_id,Review, Rating, Account_ID)
VALUES 
(1,'Great service!', 4, 1),
(2,'Could be better.', 3, 2),
(3,'Highly recommended!', 5, 3),
(4,'Average experience.', 3, 4);

CREATE TABLE Booking (
    Booking_id INT PRIMARY KEY,
    Class VARCHAR(50),
    Starting_Location VARCHAR(255),
    Destination VARCHAR(255),
    Cancellation_Policy VARCHAR(255),
    Starting_Dt_time DATETIME,
    Ending_dt_time DATETIME,
    Status VARCHAR(50),
    Account_id INT,
    FOREIGN KEY (Account_id) REFERENCES User_Account(Account_ID)
);
INSERT INTO Booking (booking_id,Class, Starting_Location, Destination, Cancellation_Policy, Starting_Dt_time, Ending_dt_time, Status, Account_id)
VALUES 
(1,'Sleeper Class', 'Hyderabad', 'Pune', 'Flexible', '2024-02-27 08:00:00', '2024-02-28 06:00:00', 'Confirmed', 1),
(2,'AC 3 Tier', 'Lucknow', 'Anand', 'Strict', '2024-03-01 10:00:00', '2024-03-02 08:00:00', 'Pending', 2),
(3,'AC 2 Tier', 'Delhi', 'Mumbai', 'Flexible', '2024-03-05 14:00:00', '2024-03-06 10:00:00', 'Confirmed', 3),
(4,'AC First Class', 'Chennai', 'Kolkatta', 'Moderate', '2024-03-10 12:00:00', '2024-03-11 10:00:00', 'Confirmed', 4);
-- Inserting additional rows into Booking table
INSERT INTO Booking (booking_id,Class, Starting_Location, Destination, Cancellation_Policy, Starting_Dt_time, Ending_dt_time, Status, Account_id)
VALUES 
(5,'Economy', 'Delhi', 'Mumbai', 'Flexible', '2024-03-15 08:00:00', '2024-03-15 12:00:00', 'Confirmed', 1),
(6,'Business', 'Ahmedabad', 'Nagpur', 'Strict', '2024-03-20 10:00:00', '2024-03-20 12:00:00', 'Pending', 2),
(7,'Economy', 'Bangalore', 'Chandigarh', 'Flexible', '2024-03-25 14:00:00', '2024-03-25 17:00:00', 'Confirmed', 3),
(8,'First Class', 'Guwahati', 'Delhi', 'Moderate', '2024-03-30 12:00:00', '2024-03-30 16:00:00', 'Confirmed', 4),
(9,'sedan', 'Delhi', 'Mumbai', 'Flexible', '2024-04-05 08:00:00', '2024-04-05 20:00:00', 'Confirmed', 1),
(10,'suv', 'Ahmedabad', 'Nagpur', 'Strict', '2024-04-10 10:00:00', '2024-04-10 16:00:00', 'Pending', 2),
(11,'hatchback', 'Bangalore', 'Chandigarh', 'Flexible', '2024-04-15 14:00:00', '2024-04-16 18:00:00', 'Confirmed', 3),
(12,'convertible', 'Guwahati', 'Delhi', 'Moderate', '2024-04-20 12:00:00', '2024-04-21 06:00:00', 'Confirmed', 4);


CREATE TABLE Train (
    Booking_id INT PRIMARY KEY,
    Train_id INT,
    Name VARCHAR(255),
    FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)
);
INSERT INTO Train (Booking_id, Train_id, Name)
VALUES 
(1, 12345, 'Rajdhani Express'),
(2, 54321, 'Shatabdi Express'),
(3, 67890, 'Duronto Express'),
(4, 98765, 'Gatimaan Express');

CREATE TABLE Flight (
    Booking_id INT PRIMARY KEY,
    Flight_id INT,
    Airline VARCHAR(255),
    FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)
);
INSERT INTO Flight (Booking_id, Flight_id, Airline)
VALUES 
(5, 111, 'Air India'),
(6, 222, 'IndiGo'),
(7, 333, 'SpiceJet'),
(8, 444, 'GoAir');
CREATE TABLE Car (
    Booking_id INT PRIMARY KEY,
    Car_no VARCHAR(50),
    
    FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)
);
INSERT INTO Car (Booking_id, Car_no)
VALUES 
(9, 'ABC123'),
(10, 'XYZ987'),
(11, 'DEF456'),
(4, 'GHI789');

CREATE TABLE Hotel (
    
    Hotel_id INT,
    Name VARCHAR(255),
    
    Rating int,
    Amenities TEXT,
    No_of_available_rooms INT
);
INSERT INTO Hotel ( Hotel_id, Name,  Rating, Amenities, No_of_available_rooms)
VALUES 
( 101, 'Tranquil Haven Hotel', 4.2, 'WiFi, Breakfast', 10),
( 202, 'Serenity Lodge',  4.5, 'Pool, Gym', 5),
( 303, 'Blissful Retreat Inn',4.8, 'Spa, Room Service', 8),
( 404, 'Oasis Heights Resort',  3.9, 'Parking', 12);