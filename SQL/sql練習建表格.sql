create table if not exists hospital (
	序號 serial primary key,
	直轄市或省轄縣市 varchar(5) not null,
	醫療機構名稱 varchar(30) not null unique,
	市話 varchar(15),
	分機 varchar(7),
	聯絡人 varchar(7),
	地址 varchar(50)	
);

CREATE TABLE IF NOT EXISTS hospital1 (
    id_ serial primary key,
    state_ VARCHAR(5) NOT NULL,
	name_ VARCHAR(30) NOT NULL UNIQUE,
	phone VARCHAR(15),
	ext VARCHAR(7),
	contact VARCHAR(7),
	address VARCHAR(50)
);

/*城市,啟始時間,結束時間,最高溫度,最低溫度,感覺*/
CREATE TABLE IF NOT EXISTS weather (
    id serial primary key,
    city varchar(30) not null,
	start_time timestamp,
	end_time timestamp,
	high_temp real,
	low_temp real,
	feel varchar(20)
);