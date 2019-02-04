drop database if exists bamazon;
CREATE DATABASE bamazon ;

USE bamazon;

create table products (
item_id integer(11) not null auto_increment,
product_name varchar(100) not null,
department_name varchar(100) not null,
price dec(10,2) not null,
stock_quantity integer(11),
primary key(item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES  ('Set Of Five Finger Hands', 'Toys', 6.47, 500),
		('Cow Wall Decal', 'Art', 27.00, 30),
		('Wine for Cats', 'Pet', 7.25, 300),
		('Cat Butt Coasters', 'Home', 4.25, 400),
		('Unicorn Rug', 'Home', 15.99, 300),
		('Puking Egg Stress Ball', 'Toys', 3.14, 1000),
		('Senior Woman With Ashthma Inhaler Wall Decal', 'Art', 28.99, 267),
		('Cat Nip', 'Pet', 1.99, 450),
		('Barbie Doll', 'Toys', 9.99, 500),
		('Nearly Natural Ficus Silk Tree', 'Home', 51.62, 345);
        
        SELECT * FROM products;
