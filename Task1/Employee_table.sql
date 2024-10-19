CREATE TABLE Employees (
    EmployeeID INT  PRIMARY KEY,  
    FirstName NVARCHAR(100) NOT NULL,         
    LastName NVARCHAR(100) NOT NULL,          
    Email NVARCHAR(255) NOT NULL,             
    HireDate DATE NOT NULL,                  
    Salary DECIMAL(10, 2) NOT NULL             
);

INSERT INTO Employees (FirstName, LastName, Email, HireDate, Salary)
VALUES ('Mohammad', 'Jamal', 'moh.js@outlook.com', '2023-01-15', 350.00);


INSERT INTO Employees (FirstName, LastName, Email, HireDate, Salary)
VALUES ('Ali', 'Ahmad', 'Ali.Ahmad@gmail.com', '2023-02-20', 300.00);