-- how to add column by alter Table (table name) 
select 8 from contacts;
go
Alter Table Contacts
	add BFF bit default 0;
go
Alter table Contacts
	alter column Address nvarchar(50);
go
Alter table Contacts
	Drop Constraint (DF_Contacts_Favori_66603565)
go
Alter table Contact
	Drop column Favorite;
go

/*1 )alter table student 
add majorID int;

2) update all row changing MajorId to valid Major.Id
3) Alter Table Student
Alter column MajorId not null
/*