CREATE DATABASE sample;

USE sample;

CREATE TABLE student (
Roll_no integer primary key auto_increment,
Name varchar(20) not null,
City varchar(20) not null
);

INSERT INTO student (Roll_no, Name, City) VALUES
(1, "Bob", "Cincinnati"),
(2, "Susan", "Louisville"),
(3, "Terry", "Basker"),
(4, "Paul", "Quicken"),
(5, "Tina", "Precious");

select * from student;