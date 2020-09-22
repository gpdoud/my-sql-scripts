select * from users;

begin transaction;

insert users values ('xx', 'xx', 'xx', 'xx', 'xx', 'xx', 0, 0);

select * from users;

rollback transaction;

select * from users;
