sselect *
	from student
	where sat < (select avg(sat) from student)