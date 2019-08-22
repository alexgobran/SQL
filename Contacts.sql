Create table Contacts (id int not null primary key identity(1,1),
Firstname nvarchar(30) not null,
Lastname nvarchar(30) not null,
Phone nvarchar(20) null,
Email nvarchar(50) null,
Relationship nvarchar(30) null,
Address nvarchar(100) null,
City nvarchar(50) null,
State char(2) null,
Birthday datetime null,
Favorite bit null default 0, 
LastContact datetime);

