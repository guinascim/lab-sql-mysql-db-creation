CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

drop table if exists lab_mysql.Cars;
create table lab_mysql.Cars (Car_ID INT AUTO_INCREMENT PRIMARY KEY, VIN VARCHAR(15), Manufacturer VARCHAR(100), Model VARCHAR(100),Year INT, Color VARCHAR(40));

drop table if exists lab_mysql.Customers;
create table lab_mysql.Customers (Customer_ID INT AUTO_INCREMENT PRIMARY KEY, Name VARCHAR(250), Phone_Number VARCHAR(15), Email VARCHAR(200), Address VARCHAR(300),
    City VARCHAR(40), State VARCHAR(40), Country VARCHAR(100), Postal_Code VARCHAR(20));

drop table if exists lab_mysql.Salespersons;
create table lab_mysql.Salespersons (Salesperson_ID INT AUTO_INCREMENT PRIMARY KEY, Name VARCHAR(200), Store VARCHAR(150));

drop table if exists lab_mysql.Invoices;
create table lab_mysql.Invoices (Invoice_ID INT AUTO_INCREMENT PRIMARY KEY, Date DATE, Car_ID INT, Customer_ID INT, Salesperson_ID INT,
    FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID),
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
    FOREIGN KEY (Salesperson_ID) REFERENCES Salespersons(Salesperson_ID));
