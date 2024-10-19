CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,  
    FirstName NVARCHAR(100) NOT NULL,         
    LastName NVARCHAR(100) NOT NULL,           
    Email NVARCHAR(255) NOT NULL,              
    PasswordC VARCHAR(255) NOT NULL,        
         
);

insert into Customers(CustomerID,FirstName,LastName,Email,PasswordC)
values(1,'Mohammad','Abu Erra','mj266501@gmail.com','123123321321');

select * from Customers;