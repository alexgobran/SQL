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





/*insert into Techtrac (Id, Description, NbrofWeeks, Available)
		Values ('DNET', 'Dot Net', 12, 1);

Insert into Techtrac (Id, Description, NbrofWeeks, Available)
		Values ('JAVA', 'Java Development', 12, 1);

Insert into Techtrac (Id, Description, NbrofWeeks, Available)
		Values ('NWSY', 'Network Security', 8, 1);

		Insert into Developers
		  (Id, Firstname, Lastname, PrimaryEmail, SecondaryEmail, City, State, Phone, TechTracId)
		  Values (8, 'Lidya', 'Tsegay', 'lidya@maxtraining.com', null, 'Cincinnati', 'OH', '513-555-2323', 'DNET');

		  Insert into Developers
		  (Id, Firstname, Lastname, PrimaryEmail, SecondaryEmail, City, State, Phone, TechTracId)
		 Values (12, 'Justin', 'Dudley', 'justin@maxtraining.com', null, 'Cincinnati', 'OH', '513-555-2323', 'DNET');

		 Insert into Developers
		  (Id, Firstname, Lastname, PrimaryEmail, SecondaryEmail, City, State, Phone, TechTracId)
		  Values (9, 'Alex', 'Gobran', 'alex@maxtraining.com', null, 'Cincinnati', 'OH', '513-555-2323', 'DNET' );


Select firstname, Lastname,t.Description as 'Program'
from Developers D
join Techtrac T
on T.Id = D.TechTracId */

--Dotnet
/*
Insert into Techtopix (TopicDesc) Values ('Git/Github');
Insert into TechTopix (TopicDesc) Values ('SQL Server')
Insert into TechTopix (TopicDesc) Values ('C#')
Insert into TechTopix (TopicDesc) Values ('EntityFranework')
Insert into TechTopix (TopicDesc) Values ('MVC')
Insert into TechTopix (TopicDesc) Values ('WebApi')
Insert into TechTopix (TopicDesc) Values ('HTML')
Insert into TechTopix (TopicDesc) Values ('CSS')
Insert into TechTopix (TopicDesc) Values ('JavaScript')
Insert into TechTopix (TopicDesc) Values ('Bootstrap')
Insert into TechTopix (TopicDesc) Values ('jQuery')
Insert into TechTopix (TopicDesc) Values ('Typescript')
Insert into TechTopix (TopicDesc) Values ('Angular')

--Java

Insert into TechTopix (TopicDesc) Values ('mySQL')
Insert into TechTopix (TopicDesc) Values ('Java')
Insert into TechTopix (TopicDesc) Values ('Hibernate')
Insert into TechTopix (TopicDesc) Values ('Spring')
Insert into TechTopix (TopicDesc) Values ('JPA')
*/

select topicId from Techtopix where Topicdesc = 'git/github';

Declare @GitGithubId int;
select @GitGithubId=TopicId from Techtopix where TopicDesc = 'Git/Github';

Insert into TechTractopix (TechTracId, TechtopixId) values ('DNET', @GitGithubId)
Insert into TechTractopix (TechTracId, TechtopixId) values ('DNET', @GitGithubId)

select tc.TopicDesc, tc.Id, tc.Description
from TechTopix tt
join techtracTopix ttt,
on tt.TopicId = ttt.techtopixId,
join techtrac tc,
on tc.topicid = ttt.techTracid,
where tt.TopicDesc = 'Git/Github';

declare @sqlserverid int
select @sqlserverid = id from techtopix where TopDesc= 'SQL Server';

Insert into TechtraxTopix (TechTracid, TechTopixId) values ('DNET', @sqlserverid)