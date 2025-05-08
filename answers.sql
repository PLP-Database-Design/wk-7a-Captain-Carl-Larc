-- Create a new table for 1NF
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);


-- Insert the first order's products
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Laptop');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (101, 'John Doe', 'Mouse');

-- Insert the second order's products
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Tablet');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Keyboard');
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (102, 'Jane Smith', 'Mouse');

-- Insert the third order's product
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product) VALUES (103, 'Emily Clark', 'Phone');


-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

-- Create the OrderItems table
CREATE TABLE OrderItems (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product)
);

-- Insert data into the Orders table
INSERT INTO Orders (OrderID, CustomerName) VALUES (101, 'John Doe');
INSERT INTO Orders (OrderID, CustomerName) VALUES (102, 'Jane Smith');
INSERT INTO Orders (OrderID, CustomerName) VALUES (103, 'Emily Clark');

-- Insert data into the OrderItems table
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (101, 'Laptop', 2);
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (101, 'Mouse', 1);
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (102, 'Tablet', 3);
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (102, 'Keyboard', 1);
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (102, 'Mouse', 2);
INSERT INTO OrderItems (OrderID, Product, Quantity) VALUES (103, 'Phone', 1);

-- Finally, you can view the tables in 2NF
SELECT * FROM Orders;
SELECT * FROM OrderItems;