CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

drop table if exists lab_mysql.Cars;
create table lab_mysql.Cars (Car_ID INT AUTO_INCREMENT PRIMARY KEY, VIN VARCHAR(15), Manufacturer VARCHAR(100), Model VARCHAR(100),Year INT, Color VARCHAR(40));

insert into lab_mysql.Cars (Car_ID, VIN, Manufacturer, Model, Year, Color)
values 
(1, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

drop table if exists lab_mysql.Customers;
create table lab_mysql.Customers (Customer_ID INT AUTO_INCREMENT PRIMARY KEY, Name VARCHAR(250), Phone_Number VARCHAR(15), Email VARCHAR(200), Address VARCHAR(300),
    City VARCHAR(40), State VARCHAR(40), Country VARCHAR(100), Postal_Code VARCHAR(20));

insert into lab_mysql.Customers (Customer_ID, Name, Phone_Number, Email, Address, City, State, Country, Postal_Code)
values
(10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

drop table if exists lab_mysql.Salespersons;
create table lab_mysql.Salespersons (Salesperson_ID INT AUTO_INCREMENT PRIMARY KEY, Name VARCHAR(200), Store VARCHAR(150));

insert into lab_mysql.Salespersons (Salesperson_ID, Name, Store)
values
(1, 'Petey Cruiser', 'Madrid'),
(2, 'Anna Sthesia', 'Barcelona'),
(3, 'Paul Molive', 'Berlin'),
(4, 'Gail Forcewind', 'Paris'),
(5, 'Paige Turner', 'Miami'),
(6, 'Bob Frapples', 'Mexico City'),
(7, 'Walter Melon', 'Amsterdam'),
(8, 'Shonda Leer', 'São Paulo');

drop table if exists lab_mysql.Invoices;
create table lab_mysql.Invoices (Invoice_ID INT AUTO_INCREMENT PRIMARY KEY, Date DATE, Car_ID INT, Customer_ID INT, Salesperson_ID INT,
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Salesperson_ID) REFERENCES Salespersons(Salesperson_ID));

insert into  lab_mysql.Invoices (Invoice_ID, Invoice_Number, Date, Car_ID, Customer_ID, Salesperson_ID)
values
(1, 852399038, '2018-08-22', 1, 10001, 3),
(2, 731166526, '2018-12-31', 3, 30001, 5),
(3, 271135104, '2019-01-22', 2, 20001, 7);
