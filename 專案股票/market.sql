create table if not exists 市場(
	name varchar(20),
	country varchar(20),
	primary key(name)
	unique(name,country)
	);

select * from 市場;
select * from 股市;

/*取出市場資料*/
select country,市場.name,date,adj_close,volume
  from 股市 left join 市場 on 股市.name = 市場.name
 where country = '台灣' and date = (
		select max(date)
		from 股市
 );

 select country,市場.name,date,adj_close,volume
  from 股市 left join 市場 on 股市.name = 市場.name
 where country = '台灣' and (date between '2024-1-1' and '2024-12-31'
 );