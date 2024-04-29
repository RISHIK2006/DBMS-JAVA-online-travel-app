**# DBMS-JAVA-online-travel-app**

About:

The Online Travel Booking project is a comprehensive platform offering seamless travel planning and booking services. Users can create accounts and manage their profiles. They can book train tickets, flights, and rental cars online. The system provides detailed information about train schedules, flight timings, and car availability, including fare enquiries. Secure payment processing ensures safe transactions. Additionally, users can browse and book accommodations from a variety of hotels listed, with details on amenities, prices, and availability. Overall, the project aims to provide a user-friendly and secure travel booking experience.

**Online-Travel-Booking Project**

1.User_Account:
Purpose: Store user account information for the travel agency's online platform.
Functionality: Manages user authentication and account details.

Flight:
Purpose: Store information about available flights.
Functionality: Facilitates flight search, booking, and seat availability.

Car:
Purpose: Store information about available rental cars.
Functionality: Manages car rental services, including car availability and pricing.

Hotel:
Purpose: Store information about available hotels.
Functionality: Manages hotel booking services, including hotel details and room availability.

HotelBookings:
Purpose: Store information about hotel bookings made by users.
Functionality: Tracks hotel bookings and related details for user reservations.

CarBookings:
Purpose: Store information about car bookings made by users.
Functionality: Tracks car bookings and related details for user reservations.

Train:
Purpose: Store information about available trains.
Functionality: Facilitates train search, booking, and seat availability.

**The Users have the following Access:-**

SignUp
Login
View,Book Trains
View,Book Flights
View,Book Hotels
View,Book Car
Check Seat Availability
Avaiablity and Fare Between Stations
Books Tickets
View Profile
Update Profile
Change Password
Logout

**Technologies used:-**

Front-End Development:
1.Apache NetBeans

Back-End Development
1.Java [J2EE]
2.JDBC
3.MySql

**Software And Tools Required**

: Git
: jdk-21_windows-x64 
: Apache Netbeens Ide 21
: mySql Workbench 8.0 CE

**Prerequisites**
Ensure that you have NetBeans installed on your computer. You can download it from [https://netbeans.apache.org/download/index.html](https://netbeans.apache.org/front/main/download/index.html)
Ensure that Git is installed on your computer. You can download Git from
https://git-scm.com/downloads
Have the URL of the Git repository you want to clone. This is usually provided on the repository page if you are using a service like GitHub, GitLab, or Bitbucket.
Step-by-Step Process
Step 1: Open NetBeans
Launch NetBeans from your desktop or start menu.
Step 2: Access Team Features
From the top menu, select Team -> Git -> Clone.
Step 3: Enter Repository Details
In the "Repository URL" field, paste the URL of the Git repository you want to clone.
Enter your username and password if the repository is private. For public repositories, authentication may not be necessary.
Click Next to proceed.
Step 4: Select Branches
You will see a list of branches available in the repository. Select the branches you want to work with or leave the default selection (usually the main branch).
Click Next to continue.
Step 5: Local Destination
Choose a directory on your computer where you want to store the local copy of the repository.
Specify the clone name (this will be the name of the folder where the repository is cloned).
You can also adjust other settings such as remote name, which is usually set to "origin" by default.
Click Finish.
Step 6: Open Project
After cloning, NetBeans might automatically recognize the project and ask if you want to open it. If it does, select Open Project.
If NetBeans does not prompt you to open the project, you can manually open it by selecting File -> Open Project, and then navigate to the directory where you cloned the repository.
Step 7: Start Working
Now you can start working with the project. All the Git features (like commit, push, fetch, pull, branch, etc.) are accessible under the Team menu.
Tips
Make sure that the Git plugin is enabled in NetBeans. You can check this under Tools -> Plugins.
To handle merge conflicts or other Git-related tasks, you can use the integrated Git tools in NetBeans found under the Team menu.
Always keep your software updated to ensure compatibility and security.
By following these steps, you should be able to successfully clone a Git repository into NetBeans and start managing your project within the IDE.

========== Dummy Database Initialization ===========
STEP 1: Open SQL Plus OR SQL Developer

STEP 2: Login and connect to database using administrator username and password


create database travel_agency;
use travel_agency;




CREATE TABLE User_Account (
    Account_ID INT PRIMARY KEY auto_increment ,
    Username VARCHAR(255),
    Email_id VARCHAR(255),
    Phone_number VARCHAR(20),
    Password VARCHAR(255)
);


INSERT INTO User_Account (account_id, Username, Email_id, Phone_number, Password) 
VALUES 
(1, 'user1', 'user1@gmail.com', '1234567890', 'password1'),
(2, 'user2', 'user2@gmail.com', '9876543210', 'password2'),
(3, 'user3', 'user3@gmail.com', '5551234567', 'password3'),
(4, 'user4', 'user4@gmail.com', '9998887776', 'password4'),
(5, 'user5', 'user5@gmail.com', '5555555555', 'password5'),
(6, 'user6', 'user6@gmail.com', '6666666666', 'password6'),
(7, 'user7', 'user7@gmail.com', '7777777777', 'password7'),
(8, 'user8', 'user8@gmail.com', '8888888888', 'password8');



CREATE TABLE flight (
    flight_id INT PRIMARY KEY,
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
    available_seats_economy int,
    available_seats_business int,
    available_seats_first_class int
);

INSERT INTO Flight (flight_id, Airline, Starting_Location, Destination, Cancellation_Policy, Starting_Dt, starting_time, ending_dt, ending_time, economy_price, business_price, first_class_price, available_seats_economy, available_seats_business, available_seats_first_class)
VALUES 
(1, 'Air India', 'Delhi', 'Mumbai', 'Flexible', '2024-03-15', '08:00:00', '2024-03-15', '12:00:00', 500, 1000, 1500, 25, 15, 10),
(2, 'IndiGo', 'Ahmedabad', 'Pune', 'Strict', '2024-03-20', '10:00:00', '2024-03-20', '12:00:00', 500, 1000, 1500, 25, 15, 10),
(3, 'SpiceJet', 'Bangalore', 'Chandigarh', 'Flexible', '2024-03-25', '14:00:00', '2024-03-25', '17:00:00', 500, 1000, 1500, 25, 15, 10),
(4, 'GoAir', 'Guwahati', 'Delhi', 'Moderate', '2024-03-30', '12:00:00', '2024-03-30', '16:00:00', 500, 1000, 1500, 25, 15, 10),
(5, 'Vistara', 'Mumbai', 'Kolkata', 'Moderate', '2024-04-02', '09:00:00', '2024-04-02', '12:00:00', 600, 1100, 1600, 30, 20, 12),
(6, 'AirAsia', 'Chennai', 'Delhi', 'Flexible', '2024-04-05', '07:00:00', '2024-04-05', '10:00:00', 550, 1050, 1550, 28, 16, 11),
(7, 'Air India', 'Delhi', 'Bangalore', 'Strict', '2024-04-10', '17:00:00', '2024-04-10', '20:00:00', 580, 1150, 1650, 26, 18, 9),
(8, 'IndiGo', 'Mumbai', 'Jaipur', 'Moderate', '2024-04-15', '11:00:00', '2024-04-15', '13:00:00', 570, 1070, 1570, 24, 14, 13),
(9, 'SpiceJet', 'Hyderabad', 'Mumbai', 'Flexible', '2024-04-18', '16:00:00', '2024-04-18', '18:30:00', 540, 1040, 1540, 27, 17, 14),
(10, 'GoAir', 'Kochi', 'Delhi', 'Strict', '2024-04-22', '18:00:00', '2024-04-22', '21:00:00', 520, 1020, 1520, 23, 13, 15),
(11, 'Vistara', 'Jaipur', 'Chennai', 'Moderate', '2024-04-25', '20:00:00', '2024-04-25', '23:00:00', 510, 1010, 1510, 22, 12, 11),
(12, 'AirAsia', 'Delhi', 'Goa', 'Flexible', '2024-04-28', '06:00:00', '2024-04-28', '08:30:00', 600, 1200, 1700, 20, 10, 12),
(13, 'Air India', 'Mumbai', 'Chennai', 'Strict', '2024-05-01', '13:00:00', '2024-05-01', '15:30:00', 550, 1100, 1600, 29, 19, 10),
(14, 'IndiGo', 'Kolkata', 'Mumbai', 'Moderate', '2024-05-05', '15:00:00', '2024-05-05', '18:00:00', 530, 1030, 1530, 21, 11, 9),
(15, 'SpiceJet', 'Delhi', 'Ahmedabad', 'Flexible', '2024-05-08', '12:00:00', '2024-05-08', '14:00:00', 560, 1060, 1560, 32, 22, 13);


CREATE TABLE car (
    car_no VARCHAR(255) PRIMARY KEY,
    seater INT,
    driver_name VARCHAR(255),
    starting_location VARCHAR(255),
    destination VARCHAR(255),
    driver_status VARCHAR(255),
    price varchar(255)
);



INSERT INTO car (car_no, seater, driver_name, starting_location, destination, driver_status, price) 
VALUES
('ABC123', 4, 'Manas Dhanpawde', 'Mumbai', 'Pune', 'available', 500),
('DEF456', 5, 'Rishik reddy', 'Bangalore', 'Hyderabad', 'available', 500),
('GHI789', 7, 'Jay Gondaliya', 'Chennai', 'Anand', 'available', 500),
('JKL012', 4, 'Kushdeo Shukla', 'Kolkata', 'Lucknow', 'available', 500),
('MNO345', 6, 'Kushay reddypawde', 'Delhi', 'Ahmedabad', 'available', 500),
('PQR678', 4, 'Rohan Sharma', 'Jaipur', 'Indore', 'available', 550),
('STU901', 5, 'Shubham Singh', 'Bhopal', 'Patna', 'available', 600),
('VWX234', 7, 'Varun Khanna', 'Nagpur', 'Bhubaneswar', 'available', 700),
('YZA567', 4, 'Yash Gupta', 'Indore', 'Jaipur', 'available', 550),
('BCD890', 6, 'Bhavya Patel', 'Surat', 'Ahmedabad', 'available', 600),
('MNO678', 6, 'Kushay reddy', 'Ahmedabad', 'Delhi', 'available', 500),
('PQR910', 4, 'Rohit Sharma', 'Indore', 'Jaipur', 'available', 550),
('STU111', 5, 'Shubham Patel', 'Patna', 'Bhopal', 'available', 600),
('VWX121', 7, 'Varun Gupta', 'Bhubaneswar', 'Nagpur', 'available', 700),
('YZA314', 4, 'Yash Singh', 'Jaipur', 'Indore', 'available', 550),
('BCD516', 6, 'Bhavya Khanna', 'Ahmedabad', 'Surat', 'available', 600);

CREATE TABLE Hotel (
    Hotel_id INT PRIMARY KEY,
    Name VARCHAR(255),
    Rating FLOAT,
    Amenities TEXT,
    Location VARCHAR(255),
    Price INT,
    Num_rooms_available INT,
    Type VARCHAR(20),
    Check_in TIME,
    Check_out TIME
);


INSERT INTO Hotel (Hotel_id, Name, Rating, Amenities, location, price, num_rooms_available, type)
VALUES 
(101, 'Tranquil Haven Hotel', 4.2, 'WiFi, Breakfast', 'Pune', 500, 50, 'AC'),
(202, 'Serenity Lodge', 4.5, 'Pool, Gym', 'Anand', 500, 60, 'Non-AC'),
(303, 'Blissful Retreat Inn', 4.8, 'Spa, Room Service', 'Hyderabad', 500, 70, 'AC'),
(404, 'Oasis Heights Resort', 3.9, 'Parking', 'Lucknow', 500, 40, 'AC'),
(505, 'Peaceful Valley Villa', 4.3, 'WiFi, Breakfast', 'Mumbai', 600, 45, 'AC'),
(606, 'Tranquility Suites', 4.7, 'Gym, Pool', 'Chennai', 550, 55, 'Non-AC'),
(707, 'Harmony Inn', 4.1, 'Room Service', 'Delhi', 450, 65, 'Non-AC'),
(808, 'Sunny Shores Hotel', 4.4, 'WiFi, Parking', 'Bangalore', 700, 30, 'AC'),
(909, 'Calm Breeze Resort', 4.6, 'Spa, Gym', 'Jaipur', 650, 35, 'AC'),
(1010, 'Tranquil Oaks Lodge', 4.0, 'Pool', 'Kolkata', 550, 50, 'Non-AC'),
(1111, 'Soothing Sands Resort', 4.9, 'WiFi, Room Service', 'Goa', 750, 25, 'AC'),
(1212, 'Blissful Bay Hotel', 4.2, 'Gym', 'Ahmedabad', 600, 40, 'Non-AC'),
(1313, 'Tranquility Retreat', 4.5, 'WiFi, Breakfast', 'Surat', 550, 55, 'AC'),
(1414, 'Calm Waters Inn', 3.8, 'Room Service, Parking', 'Nagpur', 500, 60, 'Non-AC'),
(1515, 'Serenity Suites', 4.7, 'Spa', 'Bhopal', 650, 35, 'AC'),
(1616, 'Tranquil Garden Resort', 4.3, 'WiFi, Gym', 'Indore', 600, 40, 'Non-AC'),
(1717, 'Quiet Haven Hotel', 4.6, 'Breakfast', 'Gurgaon', 700, 30, 'AC'),
(1818, 'Calm Retreat Inn', 4.4, 'Pool, WiFi', 'Chandigarh', 750, 25, 'Non-AC');






CREATE TABLE HotelBookings (
    HotelBooking_id INT AUTO_INCREMENT PRIMARY KEY,
    Hotel_id int,
    FOREIGN KEY (Hotel_id) REFERENCES Hotel(Hotel_id),
    Name VARCHAR(255) NOT NULL,
    Rating DECIMAL(2,1) NOT NULL,
    Amenities TEXT,
    Location VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    num_of_rooms_boked INT,
    type VARCHAR(20),
    Check_in TIME,
    Check_out TIME
    
);



CREATE TABLE CarBookings (
    carbookingId int  AUTO_INCREMENT PRIMARY KEY,
    car_no VARCHAR(255),
    FOREIGN KEY (car_no) REFERENCES car(car_no)
    
    
);

CREATE TABLE train (
    Train_id INT PRIMARY KEY ,
    Name VARCHAR(255) NOT NULL,
    starting_location varchar(100),
    starting_date varchar(100),
    starting_time varchar(100),
    ending_location varchar(100),
    ending_date varchar(100),
    ending_time varchar(100),
    Cancellation_Policy VARCHAR(255),
    
    sleeper_price int,
    ac_2_tier_price int,
    ac_first_class_price int,
    available_seats_sleeper int,
    available_seats_ac_2_tier int,
    available_seats_ac_first_class int
);



INSERT INTO Train (Train_id, Name, starting_location, starting_date, starting_time, ending_location, ending_date, ending_time, Cancellation_Policy, sleeper_price, ac_2_tier_price, ac_first_class_price, available_seats_sleeper, available_seats_ac_2_tier, available_seats_ac_first_class)
VALUES 
(12345, 'Rajdhani Express', 'Mumbai', '2024-04-18', '08:00:00', 'Delhi', '2024-04-19', '17:00:00', 'Flexible', 500, 1000, 1500, 50, 25, 25),
(54321, 'Shatabdi Express', 'Pune', '2024-04-19', '09:00:00', 'Hyderabad', '2024-04-19', '20:00:00', 'Strict', 500, 1000, 1500, 50, 25, 25),
(67890, 'Duronto Express', 'Bangalore', '2024-04-20', '10:00:00', 'Kolkata', '2024-04-21', '06:00:00', 'Flexible', 500, 1000, 1500, 50, 25, 25),
(98765, 'Gatimaan Express', 'Kolkata', '2024-04-21', '11:00:00', 'Bangalore', '2024-04-22', '05:00:00', 'Moderate', 500, 1000, 1500, 50, 25, 25),
(13579, 'Garib Rath', 'Chennai', '2024-04-22', '12:00:00', 'Mumbai', '2024-04-23', '12:00:00', 'Strict', 450, 900, 1400, 60, 30, 20),
(24680, 'Humsafar Express', 'Delhi', '2024-04-23', '13:00:00', 'Chennai', '2024-04-25', '13:00:00', 'Flexible', 550, 1050, 1550, 45, 20, 15),
(86420, 'Tejas Express', 'Goa', '2024-04-24', '14:00:00', 'Mumbai', '2024-04-24', '20:00:00', 'Moderate', 600, 1100, 1600, 55, 25, 10),
(97531, 'Vande Bharat', 'Ahmedabad', '2024-04-25', '15:00:00', 'Delhi', '2024-04-25', '21:00:00', 'Strict', 700, 1200, 1700, 40, 15, 5),
(75319, 'Mahamana Express', 'Varanasi', '2024-04-26', '16:00:00', 'New Delhi', '2024-04-27', '09:00:00', 'Flexible', 550, 950, 1450, 65, 35, 30),
(86459, 'Sampark Kranti', 'Hyderabad', '2024-04-27', '17:00:00', 'Jaipur', '2024-04-28', '17:00:00', 'Moderate', 525, 1025, 1525, 48, 24, 12),
(95175, 'Antyodaya Express', 'Mumbai', '2024-04-28', '18:00:00', 'Kolkata', '2024-04-30', '18:00:00', 'Flexible', 400, 800, 1300, 70, 40, 35),
(13457, 'Jan Shatabdi', 'Lucknow', '2024-04-29', '19:00:00', 'Patna', '2024-04-30', '06:00:00', 'Strict', 470, 970, 1470, 55, 27, 13),
(42068, 'Express Special', 'Jaipur', '2024-04-30', '20:00:00', 'Chandigarh', '2024-05-01', '06:00:00', 'Moderate', 500, 1000, 1500, 50, 25, 25),
(78695, 'Superfast Express', 'Bhopal', '2024-05-01', '21:00:00', 'Lucknow', '2024-05-02', '09:00:00', 'Flexible', 480, 980, 1480, 58, 29, 14),
(36987, 'Kavi Guru Express', 'Patna', '2024-05-02', '22:00:00', 'Jaipur', '2024-05-03', '10:00:00', 'Strict', 490, 990, 1490, 53, 28, 16);



CREATE TABLE CarBookings (
    carbookingId int  AUTO_INCREMENT PRIMARY KEY,
    car_no VARCHAR(255),
    seater INT NOT NULL,
    driver_name VARCHAR(100),
    starting_location VARCHAR(255),
    destination VARCHAR(255),
    driver_status VARCHAR(50),
    price varchar(255)
);


**The Screenshots of some of the webPages of this project are Here:**







