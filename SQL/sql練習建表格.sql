create table if not exists hospital (
	序號 serial primary key,
	直轄市或省轄縣市 varchar(5) not null,
	醫療機構名稱 varchar(30) not null unique,
	市話 varchar(15),
	分機 varchar(7),
	聯絡人 varchar(7),
	地址 varchar(50)	
);