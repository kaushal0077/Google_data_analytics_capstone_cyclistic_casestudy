                      -----cleaning of 12 months combined data retreive it as cleaned_combined_data-------

-----clean the combined data obtain after combining all 12 month's data and creating a temporary table namely cleaned_combined_data 
with cleaned_combined_data as
(select trim(ride_id)as ride_id,
trim(rideable_type)as rideable_type,
started_at,
ended_at,
trim(start_station_name)as start_station_name,
trim(start_station_id)as start_station_id,
trim(end_station_name)as end_station_name,
trim(end_station_id) as end_station_id,
(cast(trim(cast(start_lat as string)) as float64)) as start_lat,
(cast(trim(cast(start_lng as string)) as float64)) as start_lng,
(cast(trim(cast(end_lat as string))as float64)) as end_lat,
(cast(trim(cast(end_lng as string))as float64)) as end_lng,
trim(member_casual)as member_casual,
(ended_at-started_at)as ride_length
 from `adept-lodge-374014.bikeshare_cyclistic.new_final_combined_data`
 where
 start_station_name is not null and
 start_station_id is not null and
 end_station_name is not null and
 end_station_id is not null and
 end_lat is not null and 
 end_lng is not null

)
----retreiving cleaned_combined_data
select ride_id,
rideable_type,
started_at,
case extract (dayofweek from started_at)
 when 1 then "Sunday"
 when 2 then "Monday"
 when 3 then "Tuesday"
 when 4 then " Wednesday"
 when 5 then "Thrusday"
 when 6 then "Friday "
 when 7 then "Saturday"
 end as day_of_week,
extract(year from started_at)as started_at_year,
case extract(month from started_at)
when 1 then "January"
when 2 then "February"
when 3 then "March"
when 4 then "April"
when 5 then "May"
when 6 then "June"
when 7 then "July"
when 8 then "August"
when 9 then "September"
when 10 then "October"
when 11 then "November"
when 12 then "December"
end as month_of_start,
time(started_at)as started_at_time,
ended_at,
start_station_name,
start_station_id,
end_station_name,
end_station_id,
start_lat,
start_lng,
end_lat,
end_lng,
member_casual,
ride_length
from cleaned_combined_data
-----here 8760 is total number of hours in a year
where ride_length is not null and timestamp_diff(ended_at,started_at,hour)<8760 and ended_at>started_at




 

