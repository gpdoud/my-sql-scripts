set @mingpa = 2.0;
set @maxgpa = 3.5;

select *
	from student
	where gpa between @mingpa and @maxgpa
	order by gpa