SELECT * FROM blinkit;

ALTER TABLE blinkit 
RENAME COLUMN `ï»¿Item Fat Content` TO Item_Fat;

ALTER TABLE blinkit 
RENAME COLUMN `Outlet Establishment Year` TO year;

ALTER TABLE blinkit 
RENAME COLUMN `Outlet Size` TO size;

ALTER TABLE blinkit 
RENAME COLUMN `Item Identifier` TO Item_id; 

ALTER TABLE blinkit 
RENAME COLUMN `Item Type` TO Item_type; 
 
 ALTER TABLE blinkit 
RENAME COLUMN `Outlet Location Type` TO location_type ; 

ALTER TABLE blinkit 
RENAME COLUMN `Item Weight` TO weight ;  

ALTER TABLE blinkit 
RENAME COLUMN `Outlet Type` TO type ; 

ALTER TABLE blinkit 
RENAME COLUMN `Outlet Identifier` TO outlet_id ;


SELECT Item_id ,count(*) FROM blinkit group by 1 having count(*) > 1 ; 

SELECT * FROM blinkit where Item_id  = 'FDX32' ; 

with cte as ( select *,row_number() over(partition by Item_id ) as rn from blinkit )
select * from cte where rn > 1 ; 

select distinct(Item_Fat) from blinkit ; 

select Item_id , case when Item_Fat = 'LF' then 'Low Fat'
                      when Item_Fat = 'reg' then 'Regular'
                      when Item_Fat = 'low fat' then 'Low Fat'
                      else Item_Fat end as Item_Fat from blinkit
