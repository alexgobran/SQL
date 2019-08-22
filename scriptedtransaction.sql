-- creating a transaction so all statements either work simultaneously or not
--rollback transaction- if rowcount is (#) than rollback transaction so every statements under the tranaction will taken back.

	begin transaction 

Insert into student (id,firstname, lastname, sat, gpa, MajorId)
values (999, 'Jane', 'Doe', 1200, 3.2, null);

if @@rowcount <> 1 
BEGIN 
	rollback transaction

End

Insert into student (id,firstname, lastname, sat, gpa, MajorId)
values (998, 'John', 'Smith', 1000, 2.7, 999);

if @@rowcount <> 1 
	rollback transaction

Else commit transaction


--commit transaction only goes at the end
	

--use where id in to select multiple

/*
select * from Student where id in (999,998);


--delete one record
delete from student where (id = 999);
*/