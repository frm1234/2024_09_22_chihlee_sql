create table if not exists student(
	student_id serial,
	name varchar(20),
	major varchar(20),
	score int,
	primary key (student_id)
);

insert into student values (1,'小白','英語',50);
insert into student values (2,'小紅','化學',60);
insert into student values (3,'小綠','生物',70);
insert into student values (4,'小紅','會計',80);
