set @studentSat = 1000;

select *
	from major
    where minsat <= @studentSat;