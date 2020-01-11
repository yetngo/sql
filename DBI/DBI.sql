Create Database FPTLibrary

CREATE Table STUDENT(
StudentID varchar(10) Primary key,
StudentName nvarchar(50) not null,
Mail nvarchar(50) not null,
Birthdate date check(Birthdate < getdate()) not null,
Class varchar(10),
Major varchar(50),
Term varchar(10),
PhoneNumber varchar(15) not null,
Address nvarchar(100) not null,
CardStatus nvarchar(10) not null)

CREATE Table BOOK(
#Book varchar(10) Primary key,
BookTitle nvarchar(50) not null,
Price float not null,
Author nvarchar(50) not null,
Publisher nvarchar(50) not null,
PublishYear int check(PublishYear < year(getdate())) not null,
PublishPlace nvarchar(50) not null,
Pages int not null,
BookFormat varchar(30) not null,
Storage varchar(20) not null,
Genre varchar(50) not null,
BookMajor varchar(50) not null,
Shelf varchar(30) not null)

CREATE Table RENT(
#Rent varchar(10) Primary key,
StudentID varchar(10) Foreign key references STUDENT(StudentID)
on delete cascade on update cascade not null)

CREATE Table RENTDETAIL(
#Rent varchar(10) Foreign key references RENT(#Rent)
on delete cascade on update cascade not null,
#Book varchar(10) Foreign key references Book(#Book)
on delete cascade on update cascade not null,
Constraint PKDetail Primary key(#Rent, #Book),
RentDate Date check(RentDate<getdate()) not null,
ERD Date not null,
RRd Date)