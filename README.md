# EMPLOYEE MANAGEMENT SYSTEM

## Overview

This project is part of my SQL internship at CODTECH IT Solutions. The goal was to develop a database for managing employee records, including personal details, job positions, departments, and salaries. This project involves creating complex relationships and queries. Design tables for employees, departments, and job positions. This project shows SQL queries to manage employee records and departmental information.

## Database Design

### Tables

1. **Departments**
    - DepartmentID (Primary Key)
    - DepartmentName
    - Location
   
![Screenshot (62)](https://github.com/user-attachments/assets/cbd53a2c-0214-44f3-a359-4a98fc635a14)

2. **JobPositions**
    - JobPositionID (Primary Key)
    - JobTitle
    - MinSalary
    - MaxSalary
   
 ![Screenshot (63)](https://github.com/user-attachments/assets/e1988684-aeb4-4f3b-9347-1e49b735df18)

3. **Employees**
    - EmployeeID (Primary Key)
    - FirstName
    - LastName
    - Gender
    - DateOfBirth
    - Email
    - PhoneNumber
    - HireDate
    - JobPositionID (Foreign Key)
    - DepartmentID (Foreign Key)
   
  ![Screenshot (64)](https://github.com/user-attachments/assets/0d2460bc-32e8-421f-b58e-f3446268fad5)

