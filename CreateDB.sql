DROP DATABASE IF EXISTS EmployeeDB;
CREATE DATABASE EmployeeDB;
USE EmployeeDB;


CREATE TABLE `Location` (
    LocationID varchar(20) int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name varchar(255)
);

CREATE TABLE PostalCode (
    PostalCodeID varchar(20) NOT NULL PRIMARY KEY,
    City varchar(255)
);

CREATE TABLE Employee (
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


CREATE TABLE Department (
    DepartmentID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Name varchar(255) NULL,
    EmployeeID int NOT NULL,
    LocationID int NOT NULL,
    LastName VARCHAR(255) NULL
);

CREATE TABLE ProjectID(
    ProjectID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Name varchar(255) NULL,
    DepartmentID int NOT NULL,
    LocationID int NOT NULL
);

CREATE TABLE WorksOn (
    EmployeeID int NOT NULL,
    ProjectID int NOT NULL,
    Hours float NULL,
    CONSTRAINT PK_WorksOn PRIMARY KEY (EmployeeID, ProjectID)
);