create table IF NOT EXISTS student(
	student_id serial,
	name varchar(20),
	major varchar(20),
	primary key (student_id)
	);

insert into student(name,major)
values('小白','歷史');

insert into student(name,major)
values('小黑','會計');

insert into student(name,major)
values('大白','數學');

insert into student(name,major)
values('大黑','電子');

DELETE from student
where student_id > 5;

drop table if exists student;

select * from student;