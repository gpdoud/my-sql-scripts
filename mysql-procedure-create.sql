delimiter //

drop procedure GetAllStudents;

create procedure GetAllStudents()
begin
	select * from student order by lastname;
end//

delimiter ;