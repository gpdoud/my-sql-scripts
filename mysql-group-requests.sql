/*
select r.description, r.deliverymode, r.status, r.total,
		p.name, p.price, l.quantity, 
        (p.price * l.quantity) as 'Subtotal',
        concat(u.Firstname, ' ', u.lastname) as 'Name', u.phonenumber
*/
SELECT r.description, sum(l.quantity * p.price) as 'Total'
	from Requests r
    join Lineitems l on l.RequestId = r.ID
    join Products p on p.ID = l.ProductId
    join Vendors v on v.ID = p.VendorID
    join Users u on u.ID = r.UserID
    group by r.description