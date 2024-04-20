create database travel_agency;
use travel_agency;
CREATE TABLE User_Account (
    Account_ID INT PRIMARY KEY auto_increment ,
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
    
    Cancellation_Policy VARCHAR(255),
    
    sleeper_price int,
    ac_2_tier_price int,
    ac_first_class_price int,
    available_seats int
);
INSERT INTO Train ( Train_id, Name, Cancellation_Policy,sleeper_price,ac_2_tier_price,ac_first_class_price,available_seats)
VALUES 
( 12345, 'Rajdhani Express','Flexible',500,1000,1500,100),
( 54321, 'Shatabdi Express','Strict', 500,1000,1500,100),
( 67890, 'Duronto Express', 'Flexible',500,1000,1500,100),
(98765, 'Gatimaan Express', 'Moderate', 500,1000,1500,100);
CREATE TABLE flight (
    flight_id INT PRIMARY KEY AUTO_INCREMENT,
    Airline VARCHAR(255) NOT NULL,
    Starting_Location VARCHAR(255) NOT NULL,
    Destination VARCHAR(255) NOT NULL,
    Cancellation_Policy VARCHAR(255),
    Starting_Dt DATE,
    starting_time time,
    Ending_dt DATE,
    ending_time time,
    economy_price int,
    business_price int,
    first_class_price int,
    available_seats int
);
INSERT INTO Flight (Flight_id, Airline,Starting_Location, Destination, Cancellation_Policy, Starting_Dt,starting_time, Ending_dt,ending_time, economy_price,business_price,first_class_price,available_seats)
VALUES 
( 111, 'Air India', 'Delhi', 'Mumbai', 'Flexible', '2024-03-15' ,'08:00:00', '2024-03-15', '12:00:00',500,1000,1500,50),
(222, 'IndiGo', 'Ahmedabad', 'Nagpur', 'Strict', '2024-03-20', '10:00:00', '2024-03-20', '12:00:00',500,1000,1500,50),
(333, 'SpiceJet', 'Bangalore', 'Chandigarh', 'Flexible', '2024-03-25', '14:00:00', '2024-03-25', '17:00:00',500,1000,1500,50),
(444, 'GoAir', 'Guwahati', 'Delhi', 'Moderate', '2024-03-30', '12:00:00', '2024-03-30', '16:00:00',500,1000,1500,50);
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
INSERT INTO Train (Train_id, Name, Cancellation_Policy, sleeper_price, ac_2_tier_price, ac_first_class_price, available_seats)
VALUES 
(11111, 'Deccan Queen', 'Flexible', 450, 900, 1400, 120),
(22222, 'Gitanjali Express', 'Strict', 480, 950, 1450, 80),
(33333, 'Garib Rath Express', 'Moderate', 400, 850, 1300, 150),
(44444, 'Himalayan Queen', 'Flexible', 470, 920, 1420, 110);

CREATE TABLE Stations (
    StationID INT PRIMARY KEY ,
    city VARCHAR(255) NOT NULL
);
INSERT INTO Stations (StationID, city) VALUES
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Bangalore'),
(4, 'Kolkata'),
(5, 'Chennai'),
(6, 'Hyderabad'),
(7, 'Ahmedabad'),
(8, 'Pune'),
(9,'Lucknow'),
(10,'Anand');
CREATE TABLE Intermediate_Stops (
    StopID INT PRIMARY KEY AUTO_INCREMENT,
    Train_ID INT,
    StationID INT,
    StopOrder INT,
    DepartureDate DATE,
    departuretime time,
    FOREIGN KEY (Train_ID) REFERENCES Train(Train_ID),
    FOREIGN KEY (StationID) REFERENCES Stations(StationID)
);
-- Rajdhani Express from Mumbai to Delhi via Pune, Ahmedabad
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(1,12345, 1, 1, '2024-04-18', '08:00:00'), -- Mumbai (Starting Stop)
(2,12345, 8, 2, '2024-04-18', '10:00:00'), -- Pune
(3,12345, 7, 3, '2024-04-18', '12:00:00'), -- Ahmedabad
(4,12345, 2, 4, '2024-04-18', '16:00:00'); -- Delhi (Ending Stop)

-- Shatabdi Express from Delhi to Mumbai via Jaipur
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(5,54321, 2, 1, '2024-04-19', '09:00:00'), -- Delhi (Starting Stop)
(6,54321, 7, 2, '2024-04-19', '11:00:00'), -- Ahmedabad
(7,54321, 8, 3, '2024-04-19', '13:00:00'), -- Pune
(8,54321, 1, 4, '2024-04-19', '17:00:00'); -- Mumbai (Ending Stop)

-- Duronto Express from Bangalore to Kolkata via Chennai
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(9,67890, 3, 1, '2024-04-20', '10:00:00'), -- Bangalore (Starting Stop)
(10,67890, 5, 2, '2024-04-20', '12:00:00'), -- Chennai
(11,67890, 4, 3, '2024-04-20', '16:00:00');-- Kolkata (Ending Stop)

-- Gatimaan Express from Kolkata to Bangalore via Hyderabad
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(12,98765, 4, 1, '2024-04-21', '11:00:00'), -- Kolkata (Starting Stop)
(13,98765, 6, 2, '2024-04-21', '13:00:00'), -- Hyderabad
(33,98765, 3, 3, '2024-04-21', '17:00:00'); -- Bangalore (Ending Stop)

-- Deccan Queen from Mumbai to Pune
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(14,11111, 1, 1, '2024-04-22', '07:00:00'), -- Mumbai (Starting Stop)
(15,11111, 8, 2, '2024-04-22', '09:00:00'); -- Pune (Ending Stop)

-- Gitanjali Express from Pune to Mumbai
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(16,22222, 8, 1, '2024-04-23', '08:00:00'), -- Pune (Starting Stop)
(17,22222, 1, 2, '2024-04-23', '10:00:00'); -- Mumbai (Ending Stop)

-- Garib Rath Express from Delhi to Lucknow
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(18,33333, 2, 1, '2024-04-24', '09:30:00'), -- Delhi (Starting Stop)
(19,33333, 9, 2, '2024-04-24', '12:00:00'); -- Lucknow (Ending Stop)

-- Himalayan Queen from Anand to Mumbai
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(20,44444, 10, 1, '2024-04-25', '08:30:00'), -- Anand (Starting Stop)
(21,44444, 1, 2, '2024-04-25', '11:00:00'); -- Mumbai (Ending Stop)
-- Mumbai-Chennai Express from Mumbai to Chennai via Pune, Solapur, and Hyderabad


-- Delhi-Chennai Express from Delhi to Chennai via Hyderabad

-- Inserting rows into Train table for Mumbai-Chennai Express (TrainID: 66666)
INSERT INTO Train (Train_id, Name, Cancellation_Policy, sleeper_price, ac_2_tier_price, ac_first_class_price, available_seats)
VALUES 
(66666, 'Mumbai-Chennai Express', 'Flexible', 500, 1000, 1500, 100);

-- Inserting rows into Train table for Delhi-Chennai Express (TrainID: 77777)
INSERT INTO Train (Train_id, Name, Cancellation_Policy, sleeper_price, ac_2_tier_price, ac_first_class_price, available_seats)
VALUES 
(77777, 'Delhi-Chennai Express', 'Moderate', 500, 1000, 1500, 100);
-- Inserting row into Train table for Pune-Hyderabad Express (TrainID: 88888)
INSERT INTO Train (Train_id, Name, Cancellation_Policy, sleeper_price, ac_2_tier_price, ac_first_class_price, available_seats)
VALUES 
(88888, 'Pune-Hyderabad Express', 'Moderate', 500, 1000, 1500, 100);
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(31,88888,8,1,'2024-04-28','15:00:00'),
(32,88888,6,2,'2024-04-28','22:00:00');
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(22,66666, 1, 1, '2024-04-28', '08:00:00'), -- Mumbai (Starting Stop)
(23,66666, 8, 2, '2024-04-28', '10:00:00'), -- Pune
(24,66666, 6, 3, '2024-04-28', '13:00:00'), -- Solapur
(25,66666, 3, 4, '2024-04-28', '17:00:00'), -- Hyderabad
(26,66666, 5, 5, '2024-04-28', '22:00:00'); -- Chennai (Ending Stop)
INSERT INTO Intermediate_Stops (stopid,Train_ID, StationID, StopOrder, DepartureDate, departuretime) VALUES
(27,77777, 2, 1, '2024-04-28', '09:00:00'),
(28,77777,8,2,'2024-04-28','11:00:00'), -- Delhi (Starting Stop)
(29,77777, 6, 3, '2024-04-28', '13:00:00'), -- Hyderabad
(30,77777, 5, 4, '2024-04-28', '18:00:00'); -- Chennai (Ending Stop)


