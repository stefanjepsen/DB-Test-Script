DROP DATABASE IF EXISTS EmployeeDB;
CREATE DATABASE EmployeeDB;
USE EmployeeDB;


CREATE TABLE `Location` (
    LocationID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
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
    DepartmentID int NOT NULL,
    FOREIGN KEY (PostalCodeID) REFERENCES PostalCode (PostalCodeID)
);


CREATE TABLE Department (
    DepartmentID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Name varchar(255) NULL,
    EmployeeID int NOT NULL,
    LocationID int NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID),
    FOREIGN KEY (LocationID) REFERENCES `Location` (LocationID)
);

ALTER TABLE Employee
ADD FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID);

CREATE TABLE Project (
    ProjectID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Name varchar(255) NULL,
    DepartmentID int NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
    
);

CREATE TABLE WorksOn (
    EmployeeID int NOT NULL,
    ProjectID int NOT NULL,
    Hours float NULL,
    CONSTRAINT PK_WorksOn PRIMARY KEY (EmployeeID, ProjectID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID),
    FOREIGN KEY (ProjectID) REFERENCES Project (ProjectID)
);