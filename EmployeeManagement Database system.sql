create database SQLTutorial

CREATE TABLE EmployeeDemographics
(EmployeeID int,
 FirstName varchar(50),
 LastName varchar(50), 
 Age int, 
 Gender varchar(50)
 )
 
  SELECT * FROM EmployeeDemographics
  
 -- Insert Data into EmployeeDemographics table

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

select * from EmployeeSalary

CREATE TABLE EmployeeSalary
(Employeeid int,
 jobtitle varchar(50), 
 Salary int) 

 -- Insert Data into EmployeeSalary table

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


CREATE TABLE Department(
 DepartmentID int PRIMARY KEY, 
 DepartmentName varchar(50)
);

-- Insert Data into Department table

INSERT INTO Department
VALUES(1, 'Sales');

INSERT INTO Department
VALUES(2,'Human Resources');

INSERT INTO Department
VALUES(3,'Accounting');

INSERT INTO Department
VALUES(4,'Manager');

--Alter table EmployeeDemographics, Add Column Departmentiid
ALTER TABLE EmployeeDemographics
ADD COLUMN DepartmentID int;

-- Assign Departments to Employees based on their Job Title

UPDATE EmployeeDemographics
SET DepartmentID = 1
WHERE EmployeeID IN (1001,1003,1008);

UPDATE EmployeeDemographics
SET DepartmentID = 2
WHERE EmployeeID IN (1005);

UPDATE EmployeeDemographics 
SET DepartmentID = 3
WHERE EmployeeID IN (1002,1004,1007,1009)

UPDATE EmployeeDemographics 
SET DepartmentID = 4
WHERE EmployeeID IN (1006)


SELECT * FROM EmployeeDemographics
SELECT * FROM EmployeeSalary 















