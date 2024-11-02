CREATE DATABASE company;

USE company;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100),
    Location VARCHAR(100)
);

CREATE TABLE JobPositions (
    JobPositionID INT PRIMARY KEY AUTO_INCREMENT,
    JobTitle VARCHAR(100),
    MinSalary DECIMAL(10, 2),
    MaxSalary DECIMAL(10, 2)
);


CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(15),
    HireDate DATE,
    JobPositionID INT,
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (JobPositionID) REFERENCES JobPositions(JobPositionID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Departments (DepartmentName, Location)
VALUES 
('Human Resources', 'Building A'),
('Engineering', 'Building B'),
('Marketing', 'Building C');

INSERT INTO JobPositions (JobTitle, MinSalary, MaxSalary)
VALUES 
('Software Engineer', 50000, 120000),
('HR Manager', 40000, 90000),
('Marketing Specialist', 35000, 80000);

INSERT INTO Employees (FirstName, LastName, Gender, DateOfBirth, Email, PhoneNumber, HireDate, JobPositionID, DepartmentID, Salary)
VALUES 
('Alice', 'Johnson', 'Female', '1990-01-15', 'alice.j@example.com', '1234567890', '2024-05-01', 1, 2, 75000),
('Bob', 'Smith', 'Male', '1985-03-20', 'bob.s@example.com', '0987654321', '2024-06-15', 2, 1, 60000),
('Charlie', 'Brown', 'Male', '1992-07-10', 'charlie.b@example.com', '9876543210', '2024-07-01', 3, 3, 45000);

SELECT * FROM Departments;
SELECT * FROM JobPositions;
SELECT * FROM Employees;

SELECT e.EmployeeID, e.FirstName, e.LastName, j.JobTitle, d.DepartmentName, e.Salary
FROM Employees e
JOIN JobPositions j ON e.JobPositionID = j.JobPositionID
JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT FirstName, LastName, Salary
FROM Employees
WHERE Salary > 70000;

UPDATE Employees
SET JobPositionID = 3, Salary = 48000
WHERE EmployeeID = 1;



