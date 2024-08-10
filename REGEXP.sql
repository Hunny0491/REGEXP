create table region(
	Region varchar(120),
	Country	varchar(120),
	Item_Type varchar(120),
	Sales_Channel varchar(120),
	Order_Priority	varchar(120),
	Order_Date char(30),
	Order_ID varchar(120),
	Ship_Date varchar(120),
	Units_Sold int,
	Order_year int,
	Order_Month	int,
	Order_Weekday varchar(120),
	Order_Ship_Days varchar(120)
)

insert into region(Region,Country,Item_type,Sales_channel,Order_Priority,Order_Date,Order_ID,Ship_Date,Units_Sold,
	Order_year,Order_Month,Order_Weekday,Order_Ship_Days)
values('Asia','Japan','Fruits','Online','C','20-02-2011','770478332','08-Sep-12',5412,2016,5,'sun','11 days')

select * from region

copy region from 'E:\practicetask\task13\dg.csv' delimiter ',' csv header

select * from region


 --- Seq.1


select country from region 
	where country ~* '^J[a-z]{4}$' 


	
 --- seq.2

	
select ship_date from region 
	where ship_date ~* '^[0-5]{2}-[a-z]{3}-[1|4]{2}$'



 ---seq.3


select order_ID from region 
	where order_ID ~* '^[0-5]{2}[2-8]{5}[0-9]{2}$'


 ---seq.4


select region from region 
	where region ~* 'A[a-z]{3}$'


 ---seq.5


select order_weekday from region 
	where order_weekday ~* '^[a-s]{2}[a-z]$'


 ---seq.6


select order_priority from region 
	where order_priority ~* '^[a-h]$'











