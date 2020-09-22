USE SYS;
DROP DATABASE IF EXISTS BCDB;
CREATE DATABASE BCDB;
USE BCDB;
CREATE TABLE Customers (
	Id int PRIMARY KEY AUTO_INCREMENT,
	Code varchar(10) NOT NULL UNIQUE,
	Name varchar(30) NOT NULL,
	Sales decimal(9, 2) NOT NULL DEFAULT 0,
	Active bit NOT NULL DEFAULT 1,
	Created datetime NOT NULL DEFAULT current_timestamp
);
INSERT Customers (Code, Name, Sales) VALUES
	('A', 'ACME MFG', 10000),
	('B', 'BOB LTD', 5000),
	('C', 'CORNER DRUGSTORE', 3000);
INSERT Customers (Code, Name) VALUES
	('D', 'QUICK EASY REPAIR');
SELECT * From Customers;
CREATE TABLE Orders (
	Id int not null primary key auto_increment,
	Description varchar(30) not null,
	Total decimal(9,2) not null default 0,
	CustomerId int not null,
    foreign key (CustomerId) references Customers(Id)
);
INSERT Orders (Description, Total, CustomerId) VALUES 
	('1st Order', 1000, 1),
	('2nd Order', 5000, 2);

SELECT * From Orders;
