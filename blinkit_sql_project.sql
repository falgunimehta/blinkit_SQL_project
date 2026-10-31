create database blinkit;
use blinkit;
select * from blinkit;

#Q1 import data from table grocery sales using the provided csv file.
select * from blinkit;

#q2 write an sql query to show all item_identifier
select item_identifier from blinkit;

#q3 write an sql query to show count of total item_identifier
select count(item_identifier) from blinkit;

#q4 write an sql query to show maximum item weight.
select max(item_weight) from blinkit;

#q5 write an sql query to show minimum item weight.
select min(item_weight) from blinkit;

#q6 write an sql query to show average item_weight
select avg(item_weight) from blinkit;

#q7 write an sql query to show count of item_fat_content where item_fat_content is low fat.
select count(item_fat_content) from blinkit
where item_fat_content = 'low fat';

#q8 write an sql query to show count of item_fat_content where item_fat_content is regular.
select count(item_fat_content) from blinkit 
where item_fat_content = 'regular';

#q9 write an sql query to show maximum item_mrp 
select max(item_mrp) from blinkit; 

#q10 write an sql query to show minimum item_mrp
select min(item_mrp) from blinkit; 

#q11 write an sql query to show item_identifier , item_fat_content ,item_type, item_mrp whose item_mrp is greater than 200.
select item_identifier , item_fat_content ,item_type,item_mrp from blinkit
where item_mrp>200;

#q12 write an sql query to show maximum item_mrp where item_fat_content is low fat 
select max(item_mrp) from blinkit where item_fat_content = 'low fat';

#q13 write an sql query to show minimum item_mrp whose item_fat_content is low fat 
select min(item_mrp) from blinkit where item_fat_content = 'low fat';

#q14 write an sql query to show all data where item mrp is between 50 to 100
select * from blinkit where item_mrp between 50 and 100;

#q15 write an sql query to show all unique value of item_fat_content
select distinct item_fat_content from blinkit;

#q16 write an sql query to show all unique value of  item_type 
select distinct item_type from blinkit;

#q17 write an sql query to show all data in descending order by item mrp 
select * from blinkit 
order by item_mrp desc;

#q18 write an sql query to show all data in ascending order by item_outlet_sales
select * from blinkit 
order by item_outlet_sales asc;

#q19 write an sql query to show all data in ascending by item_type 
select * from blinkit 
order by item_type asc;

#q20 write an sql query to show data of item_type dairy & meat
select * from blinkit 
where item_type in ('dairy','meat');

#q21 write an sql query to show all unique value of outlet_size 
select distinct outlet_size from blinkit;

#q22 write an sql query to show all unique value of outlet_location_type
select distinct outlet_location_type from blinkit;
 
#q23 write an sql query to show all unique value of outlet_type 
select distinct outlet_type from blinkit;

#q24 write an sql query to show count of number of items by item_type  and order it in descending order
select item_type , count(item_identifier)no_of_item  
from blinkit  
group by item_type  
order by no_of_item desc;

#q25 write an sql query to show count of number of items by outlet_size and ordered it in ascending order 
select outlet_size , count(item_identifier) no_of_item  
from blinkit  
group by outlet_size  
order by no_of_item asc; 

#q26 write an sql query to show count of number of items by outlet_type  and ordered it in descending order.
select outlet_type , count(item_identifier) no_of_item  
from blinkit  
group by outlet_type  
order by no_of_item desc; 

#q27 write an sql query to show count of items by outlet_location_type and order it in descending order
select outlet_location_type , count(item_identifier) no_of_item  
from blinkit  
group by outlet_location_type  
order by no_of_item desc;

#q28 write an sql query to show maximum mrp by item_type 
select  item_type, max(item_mrp) max_mrp  
from blinkit  
group by item_type; 

#q29 write an sql query to show minimum mrp by item_type  
select  item_type, min(item_mrp) min_mrp  
from blinkit 
group by item_type;

#q30 write an sql query to show minimum mrp by outlet_establishment_year and order it in descending order.
select  outlet_establishment_year, min(item_mrp) min_mrp  
from blinkit 
group by outlet_establishment_year 
order by min_mrp desc;

#q31 write an sql query to show maximum mrp by outlet_establishment_year and order it in descending order.
select  outlet_establishment_year, max(item_mrp) max_mrp  
from blinkit 
group by outlet_establishment_year 
order by max_mrp desc;


#q32 write an sql query to show average mrp by outlet_size and order it in descending order.
select  outlet_size, avg(item_mrp) average_mrp  
from blinkit  
group by outlet_size 
order by average_mrp desc;

#q33 write an sql query to average mrp by outlet_type and ordered in ascending order. 
select  outlet_type, avg(item_mrp) average_mrp  
from blinkit  
group by outlet_type 
order by average_mrp asc;

#q34 write an sql query to show maximum mrp by outlet_type
select  outlet_type, max(item_mrp) max_mrp  
from blinkit  
group by outlet_type 
order by max_mrp asc;

#q35 write an sql query to show maximum item_weight by item_type  
select item_type , max(item_weight) max_weight 
from blinkit  
group by item_type  
order by max_weight desc;

#q36 write an sql query to show maximum item_weight by outlet_establishment_year 
select outlet_establishment_year , max(item_weight) max_weight  
from blinkit 
group by outlet_establishment_year  
order by max_weight asc; 

#q37 write an sql query to show minimum item_weight by outlet_type  
select outlet_type , min(item_weight) min_weight  
from blinkit 
group by outlet_type  
order by min_weight desc; 

#q38 write an sql query to show average item_weight by outlet_location_type and arrange it by descending order
select outlet_location_type , avg(item_weight) average_weight  
from blinkit 
group by outlet_location_type  
order by average_weight desc;


#q39 write an sql query to show maximum item_outlet_sales by item_type
select  item_type, max(item_outlet_sales) max_sales  
from blinkit 
group by item_type; 

#q40 write an sql query to show minimum item_outlet_sales by item_type 
select  item_type, min(item_outlet_sales) min_sales  
from blinkit 
group by item_type;

#q41 write an sql query to show minimum item_outlet_sales by outlet_establishment_year 
select  outlet_establishment_year, min(item_outlet_sales) min_sales  
from blinkit  
group by outlet_establishment_year 
order by min_sales desc;

#q42 write an sql query to show maximum item_outlet_sales by outlet_establishment_year and order it by descending order
select  outlet_establishment_year,  max(item_outlet_sales) max_sales 
from blinkit
group by outlet_establishment_year 
order by max_sales desc;

#q43 write an sql query to show average item_outlet_sales by outlet_size and order it it descending order
select  outlet_size, avg(item_outlet_sales) average_sales  
from blinkit 
group by outlet_size 
order by average_sales desc;

#q44 write an sql query to show average item_outlet_sales by outlet_type
select  outlet_type, avg(item_outlet_sales) average_sales  
from blinkit
group by outlet_type 
order by average_sales asc;

#q45 write an sql query to show maximum item_outlet_sales by outlet_type 
select  outlet_type, max(item_outlet_sales) max_sales  
from blinkit  
group by outlet_type
order by max_sales asc;

#q46 write an sql query to show total item_outlet_sales by item_type 
select item_type, sum(item_outlet_sales) total_sales
from blinkit 
group by item_type 
order by total_sales desc;

#q47 write an sql query to show total item_outlet_sales by item_fat_content 
select item_fat_content, sum(item_outlet_sales) total_sales
from blinkit
group by item_fat_content 
order by total_sales desc;

#q48 write an sql query to show maximum item_visibility by item_type
select item_type, max(item_visibility) max_visibility
from blinkit 
group by item_type 
order by max_visibility desc; 

#q49 write an sql query to show minimum item_visibility by item_type 
select item_type, min(item_visibility) min_visibility
from blinkit 
group by item_type 
order by min_visibility desc; 

#q50 write an sql query to show total item_outlet_sales by item_type but only where outlet_location_type is tier 1 
select item_type, sum(item_outlet_sales) total_sales
from blinkit 
where outlet_location_type = 'tier 1'
group by item_type 
order by total_sales desc; 

#q51 write an sql query to show total item_outlet_sales by item_type where item_fat_content is only low fat & lf
select item_type, sum(item_outlet_sales) total_sales
from blinkit 
where item_fat_content in ('low fat', 'lf')
group by item_type 
order by total_sales desc; 

