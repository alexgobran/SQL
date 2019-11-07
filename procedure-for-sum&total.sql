-- how to create procedure to get sum for each request line and total of request



alter procedure dbo.RecalcRequestLines
as
begin
	Declare @id int, @total decimal(18,2);
	declare cur cursor for
		select id from request;
	open cur;
	fetch next from cur into @id;
	while @@FETCH_STATUS = 0
	Begin
		select @total = sum(requestline.Quantity * Product.price) 
			from Requestline l
			join Products p
				on p.Id = l.ProductId
			where l.RequestId = @id;
			update Request Set Total = @Total where Id= @id;
	fetch next from cur into @id;
end;
close cur;
deallocate cur;
end