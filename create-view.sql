--Create views 
s
Create view FullRequest as 

select r.Id as 'RequestId', r.status, r.total, u.lastname as 'User',
v.Name as 'Vendor', p.name as 'Product', p.price, l.Quantity, (p.price * l.Quantity) as 'Subtotal'

	From request r
	join RequestLine l
	on l.RequestId = r.id
	join Product p
	on l.productId = p.id
	Join vendor v
		on p.VendorId = p.Id
		join [User] u
		on u.Id = r.UserId