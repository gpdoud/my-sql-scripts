select c.*, i.Lastname as 'Instructor'
	from Class c
	left join Instructor i
		on i.Id = c.InstructorId