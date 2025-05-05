<--QUSTION 1 -->
-- Create productdetail table with primary key
CREATE TABLE ProductDetail (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Products VARCHAR(100)
);

-- First insert all details into the productdetail table
INSERT INTO ProductDetail (OrderID, CustomerName, Products)
VALUES 
    (101, 'John Doe', 'Laptop, Mouse'),
    (102, 'Jane Smith', 'Tablet, Keyboard, Mouse'),
    (103, 'Emily Clark', 'Phone');


    


    <--QUSTION 2 -->
   -- Create Orders table with  primary key
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
);

INSERT INTO Orders (OrderID, CustomerName)
VALUES 
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');
-- create product table with PK and FK
CREATE TABLE Product (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
-- Insert data into the product table
INSERT INTO Product (OrderID, Product, Quantity)
VALUES 
    (101, 'Laptop', 1),
    (101, 'Mouse', 2),
    (102, 'Tablet', 1),
    (102, 'Keyboard', 1),
    (102, 'Mouse', 1),
    (103, 'Phone', 1);