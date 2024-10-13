create table if not exists station1(
	station_id serial primary key,
	stationCode varchar(10) unique not null,
	stationName varchar(20) not null,
	name varchar(20),
	stationAddrTw varchar(50),
	stationTel varchar(20),
	gps varchar(30)	,
	haveBike boolean
);
select *
  from station1;

create table if not exists station_in_out(
	date date,
	staCode varchar(5) not null,
	gateInComingCnt integer,
	gateOutGoingCnt integer,
	primary key(date,staCode),
	foreign key(staCode) references station1(stationCode)
	on delete set null  --action
	on update cascade
);
select *
  from station_in_out;