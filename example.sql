CREATE DATABASE OnlineStore;
USE OnlineStore;

CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Description TEXT,
    Price DECIMAL(10, 2),
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Categories(
	CategoryID INT AUTO_INCREMENT PRIMARY KEY,
	Name VARCHAR(255) NOT NULL,
);

CREATE TABLE CUSTOMERS(
	CustomerID INT AUTO_INCREMENT PRIMARY KEY,
	FirstName VARCHAR(255),
	LastName VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO Categories (Name) VALUES ('Electronics'), ('Books'), ('Clothing');

INSERT INTO Products (Name, Description, Price, CategoryID) VALUES ('iPhone', 'Smart Phone', 699.99, 1);

UPDATE Products SET Price = 599.99 WHERE Name = 'iPhone';

DELETE FROM Products WHERE Price < 100;

SELECT p.Name, p.Price, c.Name AS Category

FROM Products p

JOIN Categories c ON p.CategoryID = c.CategoryID;

SELECT COUNT(*) FROM Products;

SELECT AVG(Price) FROM Products WHERE CategoryID = 1;

