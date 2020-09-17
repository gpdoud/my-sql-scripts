declare @sat int = 1000;
select *
	from student
	where sat > @sat;