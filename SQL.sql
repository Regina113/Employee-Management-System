-- Departments
CREATE TABLE Departments (
       DepartmentID INT PRIMARY KEY AUTO_INCREMENT, 
       DepartmentName VARCHAR(100)
);

-- Positions
CREATE TABLE Positions (
       PositionID INT PRIMARY KEY AUTO_INCREMENT, 
       PositionName VARCHAR(100),
       Salary DECIMAL(10, 2)
);

-- Employees
CREATE TABLE Employees (
       EmployeeID INT PRIMARY KEY AUTO_INCREMENT, 
       FirstName VARCHAR(50),
       LastName VARCHAR(50),
       DateOfBirth DATE,
       Gender VARCHAR(10),
       Email VARCHAR(100), 
       Phone VARCHAR(15),
       HireDate DATE, 
       DepartmentID INT, 
       PositionID INT, 
       FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
       FOREIGN KEY (PositionID) REFERENCES Positions(PositionID)
);

-- Leave Records
CREATE TABLE LeaveRecords (
       LeaveID INT PRIMARY KEY AUTO_INCREMENT,
       EmployeeID INT,
       StartDate DATE,
       EndDate DATE,
       Reason TEXT,
       Status VARCHAR(20),
       FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Performance Reviews
CREATE TABLE PerformanceReviews (
       ReviewID INT PRIMARY KEY AUTO_INCREMENT,
       EmployeeID INT,
       ReviewDate DATE,
       ReviewerName VARCHAR(100),
       Comments TEXT,
       Rating INT CHECK (Rating BETWEEN 1 AND 10),
       FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);


-- Departments
INSERT INTO Departments(DepartmentName)
            VALUES('Human Resources');
INSERT INTO Departments(DepartmentName)
            VALUES('Engineering');
INSERT INTO Departments(DepartmentName)
            VALUES('Sales');

-- Positions
INSERT INTO Positions(PositionName, Salary)
            VALUES('HR Manager', 70000.00);
INSERT INTO Positions(PositionName, Salary)
            VALUES('Software Engineer', 85000.00);
INSERT INTO Positions(PositionName, Salary)
            VALUES('Sales Executive', 60000.00);

-- Employees
INSERT INTO Employees(FirstName, LastName, DateOfBirth, Gender, Email, Phone, HireDate, DepartmentID, PositionID)
            VALUES('Alice', 'Morgan', '1990-03-05', 'Female', 'alice@nexora.com', '1234567890', '2023-12-01', 1, 1);
INSERT INTO Employees(FirstName, LastName, DateOfBirth, Gender, Email, Phone, HireDate, DepartmentID, PositionID)
            VALUES('Brian', 'Jones', '1985-09-15', 'Male', 'brian@nexora.com', '2345678901', '2024-01-15', 2, 2);
INSERT INTO Employees(FirstName, LastName, DateOfBirth, Gender, Email, Phone, HireDate, DepartmentID, PositionID)
            VALUES('Cynthia', 'Lee', '1993-06-20', 'Female', 'cynthia@nexora.com', '3456789012', '2022-08-12', 2, 2);
INSERT INTO Employees(FirstName, LastName, DateOfBirth, Gender, Email, Phone, HireDate, DepartmentID, PositionID)
            VALUES('David', 'Nguyen', '1988-11-30', 'Male', 'david@nexora.com', '4567890123', '2024-04-01', 3, 3);
INSERT INTO Employees(FirstName, LastName, DateOfBirth, Gender, Email, Phone, HireDate, DepartmentID, PositionID)
            VALUES('Elena', 'Brown', '1995-07-09', 'Female', 'elena@nexora.com', '5678901234', '2023-09-01', 3, 3);

-- Leave Records
INSERT INTO LeaveRecords(EmployeeID, StartDate, EndDate, Reason, Status)
            VALUES(1, '2024-03-01', '2024-03-05', 'Medical', 'Approved');
INSERT INTO LeaveRecords(EmployeeID, StartDate, EndDate, Reason, Status)
            VALUES(2, '2024-05-10', '2024-05-15', 'Family Emergency', 'Pending');
INSERT INTO LeaveRecords(EmployeeID, StartDate, EndDate, Reason, Status)
            VALUES(4, '2024-06-01', '2024-06-07', 'Vacation', 'Approved');

-- Performance Reviews
INSERT INTO PerformanceReviews(EmployeeID, ReviewDate, ReviewerName, Comments, Rating)
            VALUES(1, '2024-01-10', 'Claudia Reyes', 'Great organizational skills.', 9);
INSERT INTO PerformanceReviews(EmployeeID, ReviewDate, ReviewerName, Comments, Rating)
            VALUES(2, '2024-02-20', 'Jake Mason', 'Excellent coding abilities.', 8);
INSERT INTO PerformanceReviews(EmployeeID, ReviewDate, ReviewerName, Comments, Rating)
            VALUES(2, '2024-04-15', 'Jake Mason', 'Improved teamwork.', 9);
INSERT INTO PerformanceReviews(EmployeeID, ReviewDate, ReviewerName, Comments, Rating)
            VALUES(3, '2024-01-15', 'Jake Mason', 'Consistent output.', 7);
INSERT INTO PerformanceReviews(EmployeeID, ReviewDate, ReviewerName, Comments, Rating)
            VALUES(4, '2024-03-05', 'Lauren Scott', 'High client satisfaction.', 10);
INSERT INTO PerformanceReviews(EmployeeID, ReviewDate, ReviewerName, Comments, Rating)
            VALUES(5, '2024-04-30', 'Lauren Scott', 'Solid performance.', 6);