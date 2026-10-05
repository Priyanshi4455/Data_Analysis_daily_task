create database Ecommerce;
use Ecommerce;
CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    age INT,
    phone_no VARCHAR(15) UNIQUE
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT DEFAULT 0 CHECK (stock >= 0)
);

CREATE TABLE Shipment (
    ship_id INT PRIMARY KEY,
    product_id INT,
    address VARCHAR(255),
    phone_no VARCHAR(15),

    FOREIGN KEY (product_id)
    REFERENCES Product(product_id)
);

CREATE TABLE Return_product (
    return_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    customer_id INT,
    reason VARCHAR(255),

    FOREIGN KEY (product_id)
    REFERENCES Product(product_id),

    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
);

INSERT INTO Customer (customer_id, name, city, age, phone_no) 
VALUES
(1, 'Rahul Sharma', 'Delhi', 24, '9876543210'),
(2, 'Priya Singh', 'Lucknow', 22, '9876543211'),
(3, 'Aman Verma', 'Bareilly', 26, '9876543212'),
(4, 'Neha Gupta', 'Noida', 23, '9876543213'),
(5, 'Rohit Kumar', 'Kanpur', 25, '9876543214');

INSERT INTO Product (product_id, name, category, price, stock) 
VALUES
(101, 'Dell Laptop', 'Electronics', 55000, 10),
(102, 'iPhone 15', 'Mobile', 65000, 15),
(103, 'Samsung TV', 'Television', 45000, 8),
(104, 'HP Laptop', 'Electronics', 52000, 12),
(105, 'Canon Camera', 'Camera', 38000, 6);

INSERT INTO Shipment (ship_id, product_id, address, phone_no) 
VALUES
(501, 101, '123 Main Road, Delhi', '9876543210'),
(502, 102, '45 Gomti Nagar, Lucknow', '9876543211'),
(503, 103, '78 Civil Lines, Bareilly', '9876543212'),
(504, 104, '22 Sector 18, Noida', '9876543213'),
(505, 105, '56 Mall Road, Kanpur', '9876543214');

INSERT INTO Return_Product (product_id, customer_id, reason) 
VALUES
(101, 1, 'Screen damaged'),
(102, 2, 'Wrong product received'),
(103, 3, 'Picture quality issue'),
(104, 4, 'Keyboard not working'),
(105, 5, 'Camera lens damaged');

SELECT * FROM Customer;

SELECT * FROM Product;

SELECT * FROM Shipment;

SELECT * FROM Return_Product;

INSERT INTO Product (product_id, name, category, price, stock) 
VALUES
(106, 'Boat Headphones', 'Audio', 2500, 20),
(107, 'Logitech Mouse', 'Accessories', 1500, 30);

SELECT * FROM Product WHERE price > 10000;
