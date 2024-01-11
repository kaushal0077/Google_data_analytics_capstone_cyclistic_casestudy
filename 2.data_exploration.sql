--------------------------------------------------------DATA EXPLORATION------------------------------------------------------
-----Exploring missing data ---------------
-----Exploring nulls in ride_id column ------
select *
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
ride_id is null                                                 ----no null found----

-----Exploring nulls in rideable_type column---------
select *
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
rideable_type is null                                           ----no null found----

-----Exploring nulls in started_at column---------
select *
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
started_at is null                                              ----no null found----

-----Exploring nulls in ended_at column---------
select *
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
ended_at is null                                                ----no null found----

-----Exploring nulls in start_station_name column---------
select 
count (*) as count_null_start_station_name
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
start_station_name is null                                       ----834677 null rows-----

  
-----Exploring nulls in start_station_id column---------
select 
count (*) as count_null_start_station_id
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
start_station_id is null                                         ----652493 nulls rows----


-----Exploring nulls in end_station_name column---------
select 
count (*) as count_null_end_station_name
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
end_station_name is null                                        -----696338 nulls rows----

-----Exploring nulls in end_station_id column---------
select 
count (*) as count_null_end_station_id
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
end_station_id is null                                         ----696479 nulls rows----

-----Exploring nulls in start_lat column---------
select 
count (*) as count_null_start_lat
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
start_lat is null                                              ---- no null found----

-----Exploring nulls in start_lng column---------
select 
count (*) as count_null_start_lng
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
start_lng is null                                             ---- no null found ----

-----Exploring nulls in end_lat column---------
select 
count (*) as count_null_end_lat
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
end_lat is null                                              ---- 4196 null rows ----

-----Exploring nulls in end_lng column---------
select 
count (*) as count_null_end_lng
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
end_lng is null                                             ----4196 null rows ----

-----Exploring nulls in member_casual column---------
select 
count (*) as count_null_member_casual
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
where
member_casual is null                                      ----- no null found ----

----------------------Exploring Duplicates ---------------------------------------
select
count(ride_id)as count_ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
start_station_id,
end_station_id,
end_station_name,
start_lat,
start_lng,
end_lat,
end_lng,
member_casual
from `adept-lodge-374014.bikeshare_cyclistic.complete_trip_data`
group by
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
start_station_id,
end_station_id,
end_station_name,
start_lat,
start_lng,
end_lat,
end_lng,
member_casual
having count_ride_id >1          --------------------------------no duplicate data found -------------




