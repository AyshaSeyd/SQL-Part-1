CREATE DATABASE qa_restaurant;
USE qa_restaurant;
CREATE TABLE customers(
cust_id INT UNIQUE AUTO_INCREMENT,
cust_name VARCHAR (100) NOT NULL,
phone_number CHAR (11) NOT NULL,
PRIMARY KEY (cust_id));
SHOW TABLES;
INSERT INTO customers(cust_name, phone_number) VALUES("Aysha", "07864127766");
SHOW TABLES;
DESCRIBE customers;
CREATE TABLE orders(
order_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_id INT NOT NULL,
order_date DATE,
PRIMARY KEY(order_id),
FOREIGN KEY (cust_id) REFERENCES customers(cust_id));
SHOW TABLES;
DESCRIBE customers;
SELECT*FROM customers;
DESCRIBE orders;
ALTER TABLE customers ADD age INT NOT NULL;
ALTER TABLE customers ADD points DECIMAL(6,2);
SHOW TABLES;
DESCRIBE customers;
ALTER TABLE customers MODIFY cust_name VARCHAR (70) DEFAULT "N/A";
INSERT INTO customers(cust_name, phone_number, age, points) VALUES("Maryam", "07864127766", 9, 10.2);
UPDATE customers set age = 28, points = 10.2 WHERE cust_id = 1;
CREATE TABLE items(
item_id INT UNIQUE NOT NULL AUTO_INCREMENT,
item_name VARCHAR(20),
price DECIMAL(6,2),
PRIMARY KEY(item_id));
SELECT*FROM items;
CREATE TABLE orders(
order_id INT UNIQUE NOT NULL AUTO_INCREMENT,
cust_id INT NOT NULL,
total_price DECIMAL (6,2),
PRIMARY KEY (order_id),
FOREIGN KEY (cust_id) REFERENCES customers(cust_id));
SELECT*FROM customers;
INSERT INTO customers(cust_name, phone_number, age, points) VALUES("Muhammed", "07864127766", 17, 10.20);
INSERT INTO customers(cust_name, phone_number, age, points) VALUES("Yusuf", "07864127766", 15, 10.20);
INSERT INTO customers(cust_name, phone_number, age, points) VALUES("Bilal", "07864127766", 13, 10.20);
INSERT INTO customers(cust_name, phone_number, age, points) VALUES("Zainab", "07864127766", 22, 10.20);
INSERT INTO customers(cust_name, phone_number, age, points) VALUES("Hajar", "07864127766", 20, 10.20);
INSERT INTO customers(cust_name, phone_number, age, points) VALUES("Fathima", "07864127766", 25, 10.20);
INSERT INTO customers(cust_name, phone_number, age, points) VALUES("Saleena", "07864127766", 50, 10.20);
SELECT*FROM orders;
INSERT INTO orders(order_id, cust_id, order_date) VALUES("1", "9", "13.09.22");
INSERT INTO orders(order_id, cust_id, order_date) VALUES("2", "7", "2022.09.13");
INSERT INTO orders(order_id, cust_id, order_date) VALUES("3", "5", "2022.09.14");
INSERT INTO orders(order_id, cust_id, order_date) VALUES("4", "8", "2022.09.15");
INSERT INTO orders(order_id, cust_id, order_date) VALUES("5", "4", "2022.09.16");
SELECT*FROM items;
INSERT INTO items(item_name, price) VALUES("Chicken Biryani", "15.30");
INSERT INTO items(item_name, price) VALUES("Lamb Biryani", "16.30");
INSERT INTO items(item_name, price) VALUES("Chicken Shawarma", "10.30");
INSERT INTO items(item_name, price) VALUES("Beef Shawarma", "12.30");
INSERT INTO items(item_name, price) VALUES("Fresh Lemon Juice", "3.30");
CREATE TABLE order_items(
oi_id INT UNIQUE NOT NULL AUTO_INCREMENT,
or_id INT NOT NULL,
it_id INT NOT NULL,
quantity INT,
PRIMARY KEY(oi_id),
FOREIGN KEY(or_id) REFERENCES orders(order_id),
FOREIGN KEY(it_id) REFERENCES items(item_id));
SELECT*FROM order_items;
INSERT INTO order_items(or_id, it_id, quantity) VALUES("2", "4", "10");
INSERT INTO order_items(or_id, it_id, quantity) VALUES("5", "3", "15");
INSERT INTO order_items(or_id, it_id, quantity) VALUES("1", "3", "20");
INSERT INTO order_items(or_id, it_id, quantity) VALUES("4", "2", "15");
INSERT INTO order_items(or_id, it_id, quantity) VALUES("5", "1", "10");