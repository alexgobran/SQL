
/*create database Capstone

alter database Capstone modify name = PRS


Create Table Fire
(
Id int primary key identity(1,1) not null,
Username varchar(30) not null unique,
Password nvarchar(30) not null,
Firstname nvarchar(30) not null,
Lastname nvarchar(30) not null,
Phone nvarchar(12) null,
Email nvarchar(255) null,
IsReviewer bit not null default 1,
IsAdmin bit not null default 1,
);

Create Table Vendor
(
Id int primary key identity(1,1),
Code nvarchar(30) not null unique,
Name nvarchar(30) not null,
Address nvarchar(30) not null,
City nvarchar(30) not null default 'Cincinnati',
State nchar(2) not null default 'OH',
Zip nchar(5) not null,
Phone nvarchar(12) null,
Email nvarchar(255) null
);


Create Table Product
( 
Id int primary key identity(1,1),
PartNbr nvarchar(30) not null unique,
Name nvarchar(30) not null,
Price decimal(11,2) not null,
Unit nvarchar(30) not null,
PhotoPath nvarchar(255) null,
VendorId int not null foreign key references Vendor
);


Create Table Request
(
Id Int primary key identity(1,1),
Description nvarchar(80) not null,
Justification nvarchar(80) not null,
RejectionReason nvarchar(80) null,
DeliveryMode nvarchar(20) not null Default 'Pickup',
Status nvarchar(10) not null Default 'NEW',
Total  Decimal(11,2) not null Default 0,
UserId int Foreign key References [User]
);


Create Table RequestLine
(
Id int primary key identity(1,1),
RequestId int Foreign key references Request(Id),
ProductId int Foreign Key References Product(Id),
Quantity int not null default 1
);
*/
Insert into Vendor(Code, Name, Address, City, State, Zip, Phone, Email)
			Values('SAM', 'Samsung', '456 Sam st', 'Cincinnati', 'OH', 45321, 513-233-5423, 'Sam@samsung.com');

			Select * from Vendor

Insert into Product(PartNbr, Name, Price, Unit)
values(1, 'dell laptop',400,'1A');
Insert into Product(PartNbr, Name, Price, Unit)
values(2, 'Samsung Tablet',300,'2A');