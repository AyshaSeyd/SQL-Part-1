CREATE DATABASE qa_restaurant;
USE qa_restaurant;
CREATE TABLE customers(
cust_id INT UNIQUE AUTO_INCREMENT,
cust_name VARCHAR (100) NOT NULL,
phone_number CHAR (11) NOT NULL,
PRIMARY KEY (cust_id));
SHOW TABLES;
INSERT INTO customers(cust_name, phone_number) VALUES("Aysha", "07864127766");


