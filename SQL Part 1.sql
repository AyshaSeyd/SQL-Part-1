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


