-- Business Questions
-- 1. List all employees along with their department and job title.
-- Include salary and date of hire. 
SELECT EmployeeID, FirstName, LastName, DepartmentName, PositionName, Salary, HireDate
FROM Employees JOIN Departments USING (DepartmentID)
			   JOIN Positions USING (PositionID);
               
-- 2. We need a report showing all leave records for each employee. 
-- Include their name, leave dates, and status. 
SELECT FirstName, LastName, StartDate, EndDate, Reason, Status 
FROM LeaveRecords JOIN Employees USING (EmployeeID);

-- 3. Which 3 employees have the highest average performance ratings this year?
SELECT FirstName, LastName, AVG(Rating) AS AvgRating
FROM PerformanceReviews JOIN Employees USING (EmployeeID)
WHERE YEAR(ReviewDate) = 2024
GROUP BY EmployeeID
ORDER BY AvgRating DESC
LIMIT 3;

-- 4. Show the number of male and female employees in each department.
SELECT DepartmentName, Gender, COUNT(*) AS Count
FROM Employees JOIN Departments USING (DepartmentID)
GROUP BY DepartmentName, Gender;

-- 5. Give us a list of employees hired in the last 6 months. 
SELECT FirstName, LastName, HireDate
FROM Employees
WHERE HireDate >= CURDATE() - INTERVAL 6 MONTH;