SELECT code as 代碼, name as 車站名稱
       ,e_name as 英文名稱
FROM public.station
where code in('1001','1002')
ORDER BY id ASC ;

SELECT code as 代碼, name as 車站名稱
       ,e_name as 英文名稱
FROM public.station
where code in('1001','1002') and name ='基隆'
ORDER BY id ASC ;


SELECT code as 代碼, name as 車站名稱
       ,e_name as 英文名稱
FROM public.station
where code like '100%'

ORDER BY id ASC ;