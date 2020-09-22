DROP DATABASE IF EXISTS EmployeeDB;
CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE 'Location' (
    LocationID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name varchar(255)
);

CREATE TABLE 'PostalCode' (
    PostalCodeID varchar(20) NOT NULL PRIMARY KEY,
    City varchar(255)
);

CREATE TABLE 'Employee' (
    EmployeeID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    FirstName varchar(255) NULL,
    Innitials varchar(255) NULL,
    LastName varchar(255) NULL,
    Street varchar(255) NULL,
    PostalCode varchar(20) NOT NULL,
    Gender varchar(1) NOT NULL,
    BirthDate DATE NOT NULL,
    DepartmentID int NOT NULL

);