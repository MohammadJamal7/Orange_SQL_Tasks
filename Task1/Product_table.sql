CREATE TABLE MyProducts (
    ProductID INT  PRIMARY KEY, 
    ProductName NVARCHAR(100) NOT NULL,     
    Price DECIMAL(10, 2) NOT NULL,           
    Quantity INT NOT NULL                    
);

INSERT INTO MyProducts (ProductID,ProductName, Price, Quantity)
VALUES (1,'Laptop', 500.0, 7);


INSERT INTO MyProducts (ProductID,ProductName, Price, Quantity)
VALUES (2,'Charger', 12.50, 20);

select * from MyProducts;