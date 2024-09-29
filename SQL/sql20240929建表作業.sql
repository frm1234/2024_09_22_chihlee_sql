create table if not exists station (
	id serial primary key,
	code varchar(10) unique not null,
	name varchar(10) unique,
	e_name varchar(50) 
	);
	