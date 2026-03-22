create database sleep_health_db;
use sleep_health_db;

drop database sleep_health_db;


select * from sleep_health_and_lifestyle_dataset; 

select Gender, Round(avg(sleep_Duration),2) as Avg_Sleep
from sleep_health_and_lifestyle_dataset
Group by Gender ;

Select Stress_Level, ROUND(Avg(Quality_of_sleep),2)
from sleep_health_and_lifestyle_dataset 
Group by Stress_Level 
Order by Stress_Level; 

Select Sleep_Disorder, count(*)
from sleep_health_and_lifestyle_dataset 
Group by Sleep_Disorder;  

Select Daily_Steps, ROUND(Avg(Quality_of_sleep),2)
from sleep_health_and_lifestyle_dataset 
Group by Daily_Steps;

SELECT *
FROM  sleep_health_and_lifestyle_dataset  
WHERE Stress_Level >= 8
AND sleep_Duration<6;