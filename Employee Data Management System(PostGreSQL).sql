-- Drop tables if exist (for clean rerun)
DROP TABLE IF EXISTS EmployeeDemographics;
DROP TABLE IF EXISTS EmployeeSalary;
DROP TABLE IF EXISTS Department;

-- Create EmployeeDemographics Table
CREATE TABLE EmployeeDemographics (
  EmployeeID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Age INT,
  Gender VARCHAR(50)
);

-- Create EmployeeSalary Table
CREATE TABLE EmployeeSalary (
  EmployeeID INT PRIMARY KEY,
  JobTitle VARCHAR(50),
  Salary INT
);

-- Create Department Table
CREATE TABLE Department (
  DepartmentID INT PRIMARY KEY,
  DepartmentName VARCHAR(50)
);

-- Insert Data into EmployeeDemographics
   INSERT INTO EmployeeDemographics 
  (EmployeeID,FirstName, LastName,Age,Gender) values (1001,'Jim','Halpert',40,'Male');
   INSERT INTO EmployeeDemographics 
  (EmployeeID,FirstName, LastName,Age,Gender) values (1002,'Pam','Beasely',30,'Female');
   INSERT INTO EmployeeDemographics 
  (EmployeeID,FirstName, LastName,Age,Gender) values (1003,'Dwight','Schrute',29,'Male');
   INSERT INTO EmployeeDemographics 
  (EmployeeID,FirstName, LastName,Age,Gender) values (1004,'Angela','Martin',31,'Female');
   INSERT INTO EmployeeDemographics 
  (EmployeeID,FirstName, LastName,Age,Gender) values (1005,'Toby','Flenderson',32,'Male');
   INSERT INTO EmployeeDemographics 
  (EmployeeID,FirstName, LastName,Age,Gender) values (1006,'Michael','Scott',35,'Male');
   INSERT INTO EmployeeDemographics 
  (EmployeeID,FirstName, LastName,Age,Gender) values (1007,'Meredith','Palmer',32,'Female');
   INSERT INTO EmployeeDemographics 
  (EmployeeID,FirstName, LastName,Age,Gender) values (1008,'Stanley','Hudson',38,'Male');
   INSERT INTO EmployeeDemographics 
  (EmployeeID,FirstName, LastName,Age,Gender) values (1009,'Kevin','Malone',31,'Male');

-- Insert Data into EmployeeSalary
INSERT INTO EmployeeSalary
(EmployeeID,JobTitle,Salary) values( 1001,'Salesman',45000);
INSERT INTO EmployeeSalary
(EmployeeID,JobTitle,Salary) values( 1002,'Receptionist',20000);  
INSERT INTO EmployeeSalary
(EmployeeID,JobTitle,Salary) values( 1003,'Salesman',45000);
INSERT INTO EmployeeSalary
(EmployeeID,JobTitle,Salary) values( 1004,'Accountant',50000);
INSERT INTO EmployeeSalary
(EmployeeID,JobTitle,Salary) values( 1005,'HR',37000);
INSERT INTO EmployeeSalary
(EmployeeID,JobTitle,Salary) values( 1006,'Regional Manager',60000);
INSERT INTO EmployeeSalary
(EmployeeID,JobTitle,Salary) values( 1007,'Supplier Relations',35000);
INSERT INTO EmployeeSalary
(EmployeeID,JobTitle,Salary) values( 1008,'Salesman',45000);


-- Insert Data into Department
INSERT INTO Department
VALUES(1, 'Sales');

INSERT INTO Department
VALUES(2,'Human Resources');

INSERT INTO Department
VALUES(3,'Accounting');

INSERT INTO Department
VALUES(4,'Manager');
-- Add DepartmentID column to EmployeeDemographics table
ALTER TABLE EmployeeDemographics
ADD COLUMN DepartmentID INT;

-- Assign Departments to Employees based on their Job Title

UPDATE EmployeeDemographics
SET DepartmentID = 1
WHERE EmployeeID IN (1001, 1003, 1008);

UPDATE EmployeeDemographics
SET DepartmentID = 2
WHERE EmployeeID = 1005;

UPDATE EmployeeDemographics
SET DepartmentID = 3
WHERE EmployeeID IN (1002, 1004, 1007, 1009);

UPDATE EmployeeDemographics
SET DepartmentID = 4
WHERE EmployeeID = 1006;

-- Sample Join Query: Employee with Salary and Department
SELECT 
  e.EmployeeID, 
  e.FirstName, 
  e.LastName, 
  e.Age, 
  e.Gender,
  d.DepartmentName,
  s.JobTitle, 
  s.Salary
FROM EmployeeDemographics e
LEFT JOIN EmployeeSalary s ON e.EmployeeID = s.EmployeeID
LEFT JOIN Department d ON e.DepartmentID = d.DepartmentID;
