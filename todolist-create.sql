CREATE DATABASE todoapp;

USE todoapp;

Create table User (
ID integer primary key auto_increment,
Name varchar(40) not null,
EmailID varchar(60) not null,
UserName varchar(40) not null,
password varchar(20) not null
);

Create table ToDo (
Date date not null,
Task varchar(60) not null,
Description varchar(60) not null,
DueDate date not null
);

INSERT INTO User (ID, Name, EmailID, UserName, Password) VALUES
(1, 'SYSTEM', 'SYSTEM@SYSTEM.com', 'SYSTEM', 'SYSTEM');

INSERT INTO ToDo (Date, Task, Description, DueDate) VALUES
('2023-04-05', 'Finish App', 'Finish this App', '2023-05-18');