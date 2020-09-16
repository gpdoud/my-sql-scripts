select *
	from orders o
	join OrderLines l
		on o.id = l.OrdersId
	join Customers c
		on c.id = o.CustomerId