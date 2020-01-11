create table Address(
	House# varchar(4),
	StreeetName varchar(20),
	City nvarchar(20),
	Province nvarchar(20),
	country nvarchar(20)
	constraint kc primary key(House#,City));

create table Salaries(
	ID varchar(10) primary key,
	IDPerson varchar(20),
	PersonName nvarchar(20),
	SalaryValue float(10),
	Month int,
	Year int);
create table Contacts(
	ID varchar(10) constraint kn references Salaries(ID),
	ContactName varchar(20),
	Address nvarchar(50),
	Tel varchar(10),
	eMail varchar(20));
