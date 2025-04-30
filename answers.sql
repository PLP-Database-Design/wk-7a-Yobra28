<--QUSTION 1 -->
-- Create Orders table with primary key
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL
);

-- Create OrderProducts table with composite primary key and foreign key
CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(100),
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- First insert all orders into the Orders table
INSERT INTO Orders (OrderID, CustomerName)
VALUES 
    (101, 'John Doe'),
    (102, 'Jane Smith'),
    (103, 'Emily Clark');

-- Then insert the products with proper foreign key relationships
INSERT INTO OrderProducts (OrderID, Product)
VALUES
    (101, 'Laptop'),
    (101, 'Mouse'),
    (102, 'Tablet'),
    (102, 'Keyboard'),
    (102, 'Mouse'),
    (103, 'Phone');

    <--QUSTION 2 -->
    -- Create Orders table (removes CustomerName partial dependency)
CREATE TABLE Orders AS
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- Create OrderItems table (contains full dependency on composite key)
CREATE TABLE OrderItems AS
SELECT OrderID, Product, Quantity
FROM OrderDetails;

-- Add primary keys
ALTER TABLE Orders ADD PRIMARY KEY (OrderID);
ALTER TABLE OrderItems ADD PRIMARY KEY (OrderID, Product);