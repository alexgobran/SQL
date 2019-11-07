/*
--create the database
create database Apprenti;

*/
/*
Create Table Techtrac (
Id nchar(4) not null primary key,
Description nvarchar(30) not null, 
 Available bit not null default 1
);not
*/

create table Developers (
	Id int not null primary key, -- identity(x,y)
	Firstname nvarchar(30) not null,
	Lastname nvarchar(30) not null,
	PrimaryEmail nvarchar(255) not null,
	SecondaryEmail nvarchar(255),
	City nvarchar(40) not null defa
 NbrofWeeks int  null,ult 'Cincinnati',
	State nchar(2) not null default 'OH',
	Active bit not null default 1,
	Phone nvarchar(20) not null,
	TechTracId nchar(4) not null foreign key references TechTrac(Id)
);

Create Table TechTopix 
(TopicId int not null primary key identity(1,1),
TopicDesc nvarchar(80) not null);

Create Table TechTracTopix
(Id int not null primary key identity(1,1),
TechTracId nchar(4) not null foreign key references TechTrac(Id),
TechTopixId int not null foreign key references TechTopix(TopicId)
);