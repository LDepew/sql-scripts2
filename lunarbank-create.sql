CREATE database lunarbank;

USE lunarbank;

Create table User (
ID integer primary key auto_increment,
AccountNumber mediumint not null,
Password varchar(20) not null,
FirstName varchar(20) not null,
LastName varchar(20) not null,
PhoneNumber varchar(20) not null,
Email varchar(20) not null,
IsReviewer tinyint default 0 not null,
IsAdmin tinyint default 0 not null,
CONSTRAINT anumber unique (AccountNumber)
);

insert into User (ID, AccountNumber, Password, FirstName, LastName, PhoneNumber, Email, IsReviewer, IsAdmin) VALUES
	(1, '1000001', 'xxxxx', 'System', 'System', 'XXX-XXX-XXXX', 'system@lunarbank.com', 0, 0),
    (2, '1000002', 'login', 'Lance', 'Depew', 'XXX-XXX-XXXX', 'system@lunarbank.com', 1, 1);
    
describe User;