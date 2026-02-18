CREATE DATABASE railway_reservation;
USE railway_reservation;

CREATE TABLE trains (
    train_id INT PRIMARY KEY,
    train_name VARCHAR(50),
    source VARCHAR(50),
    destination VARCHAR(50),
    total_seats INT
);

INSERT INTO trains VALUES
(101,'Express','Bangalore','Chennai',100);
