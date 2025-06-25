USE FlipkartDB;

-- ✅ INSERT USERS (including your data)
INSERT INTO Users (name, email, password, address)
VALUES 
('Teja', 'teja@gmail.com', 'pass123', NULL),  
('Madhuri', 'madhuri@gmail.com', 'pass456', 'Delhi'),
('Idurbasha Shaik', 'idurbasha2477@gmail.com', 'pass789', 'Hyderabad'),
('Suma Latha B', 'sumalatha@gmail.com', 'sumapass', 'Hyderabad');

-- ✅ INSERT CATEGORIES (including Mobiles)
INSERT INTO Categories (name)
VALUES 
('Appliances'), 
('Toys'), 
('Mobiles'); 

-- ✅ INSERT PRODUCTS (iPhone, OnePlus, etc.)

INSERT INTO Products (name, description, price, stock, category_id)
VALUES 
('Samsung Washing Machine', 'Front Load 6kg', 20000.00, 10, 4),
('Teddy Bear', NULL, 399.00, 50, 5),
('iPhone 14', '128GB, Midnight', 79999.00, 20, 6),
('iPhone 14 Pro', '256GB, Space Black', 129999.00, 15, 6),
('OnePlus 12', '256GB, Flowy Emerald', 69999.00, 25, 6),
('OnePlus Nord CE 4', '128GB, Dark Chrome', 24999.00, 30, 6);

-- ✅ UPDATE DATA (Example)
UPDATE Products
SET stock = stock - 1
WHERE name = 'Samsung Washing Machine';

UPDATE Users
SET address = 'Mumbai'
WHERE email = 'rahul@flipkart.com';

-- ✅ UPDATE MULTIPLE ROWS
UPDATE Products
SET stock = 100
WHERE category_id = 5;

-- ✅ DELETE from Cart
DELETE FROM Cart
WHERE user_id = 1 AND product_id = 2;

-- ✅ INSERT into Orders
INSERT INTO Orders (user_id, status, total_amount)
VALUES (1, 'Pending', 20000.00);

-- ✅ INSERT NULL Payment
INSERT INTO Payments (order_id, payment_method, amount)
VALUES (1, NULL, 20000.00);

-- ✅ ON DELETE CASCADE Example
DELETE FROM Orders
WHERE order_id = 1;