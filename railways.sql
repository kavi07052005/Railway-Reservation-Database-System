CREATE DATABASE railway_reservation;
USE railway_reservation;

CREATE TABLE trains (
    train_id INT PRIMARY KEY,
    train_name VARCHAR(50),
    source VARCHAR(50),
    destination VARCHAR(50),
    total_seats INT
);

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    gender VARCHAR(10)
);

CREATE TABLE tickets (
    ticket_id INT PRIMARY KEY AUTO_INCREMENT,
    passenger_id INT,
    train_id INT,
    travel_date DATE,
    seat_number INT,
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id),
    FOREIGN KEY (train_id) REFERENCES trains(train_id)
);

-- Insert Sample Data

INSERT INTO trains VALUES
(101, 'Express', 'Bangalore', 'Chennai', 100),
(102, 'Superfast', 'Mumbai', 'Delhi', 150);
