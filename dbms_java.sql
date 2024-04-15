create database travel_agency;
use travel_agency;
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
CREATE TABLE train (
    Train_id INT PRIMARY KEY ,
    Name VARCHAR(255) NOT NULL,
    Starting_Location VARCHAR(255) NOT NULL,
    Destination VARCHAR(255) NOT NULL,
    Cancellation_Policy VARCHAR(255),
    Starting_Dt_time DATETIME,
    Ending_dt_time DATETIME,
    sleeper_price int,
    ac_2_tier_price int,
    ac_first_class_price int
);
INSERT INTO Train ( Train_id, Name,Starting_Location, Destination, Cancellation_Policy, Starting_Dt_time, Ending_dt_time,sleeper_price,ac_2_tier_price,ac_first_class_price)
VALUES 
( 12345, 'Rajdhani Express','Hyderabad', 'Pune', 'Flexible', '2024-02-27 08:00:00', '2024-02-28 06:00:00',500,1000,1500),
( 54321, 'Shatabdi Express','Lucknow', 'Anand', 'Strict', '2024-03-01 10:00:00', '2024-03-02 08:00:00',500,1000,1500),
( 67890, 'Duronto Express','Delhi', 'Mumbai', 'Flexible', '2024-03-05 14:00:00', '2024-03-06 10:00:00',500,1000,1500),
(98765, 'Gatimaan Express', 'Chennai', 'Kolkatta', 'Moderate', '2024-03-10 12:00:00', '2024-03-11 10:00:00',500,1000,1500);
CREATE TABLE flight (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    Airline VARCHAR(255) NOT NULL,
    Starting_Location VARCHAR(255) NOT NULL,
    Destination VARCHAR(255) NOT NULL,
    Cancellation_Policy VARCHAR(255),
    Starting_Dt_time DATETIME,
    Ending_dt_time DATETIME,
    economy_price int,
    business_price int,
    first_class_price int
);
INSERT INTO Flight (Flight_id, Airline,Starting_Location, Destination, Cancellation_Policy, Starting_Dt_time, Ending_dt_time, economy_price,business_price,first_class_price)
VALUES 
( 111, 'Air India', 'Delhi', 'Mumbai', 'Flexible', '2024-03-15 08:00:00', '2024-03-15 12:00:00',500,1000,1500),
(222, 'IndiGo', 'Ahmedabad', 'Nagpur', 'Strict', '2024-03-20 10:00:00', '2024-03-20 12:00:00',500,1000,1500),
(333, 'SpiceJet', 'Bangalore', 'Chandigarh', 'Flexible', '2024-03-25 14:00:00', '2024-03-25 17:00:00',500,1000,1500),
(444, 'GoAir', 'Guwahati', 'Delhi', 'Moderate', '2024-03-30 12:00:00', '2024-03-30 16:00:00',500,1000,1500);
CREATE TABLE car (
    car_no VARCHAR(255) PRIMARY KEY,
    seater INT,
    driver_name VARCHAR(255),
    location VARCHAR(255),
    driver_status varchar(255),
    price int
);
INSERT INTO car (car_no, seater, driver_name, location,driver_status,price) VALUES
('ABC123', 4, 'Manas Dhanpawde', 'Pune','available',500),
('DEF456', 5, 'Rishik reddy', 'Hyderabad','available',500),
('GHI789', 7, 'Jay Gondaliya', 'Anand','available',500),
('JKL012', 4, 'Kushdeo Shukla', 'Lucknow','available',500),
('MNO345', 6, 'Kushay reddypawde', 'Delhi','available',500);
CREATE TABLE Hotel (
    
    Hotel_id INT,
    Name VARCHAR(255),
    
    Rating int,
    Amenities TEXT,
    location varchar(255),
    price int
);
INSERT INTO Hotel ( Hotel_id, Name,  Rating, Amenities,location,price)
VALUES 
( 101, 'Tranquil Haven Hotel', 4.2, 'WiFi, Breakfast', 'pune',500),
( 202, 'Serenity Lodge',  4.5, 'Pool, Gym', 'anand',500),
( 303, 'Blissful Retreat Inn',4.8, 'Spa, Room Service', 'hyderbad',500),
( 404, 'Oasis Heights Resort',  3.9, 'Parking', 'lucknow',500);