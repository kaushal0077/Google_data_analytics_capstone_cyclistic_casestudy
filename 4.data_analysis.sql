-------------code for comparing numbers of member-casual data---------------------------------
Select count(ride_id) as no_of_ride,member_casual
FROM `adept-lodge-374014.bikeshare_cyclistic.cleaned_combined_data`
group by member casual
---------------code for abstarcting casual-member-monthly and hourly behaviour--------------------------------
  
SELECT count(ride_id)as no_of_ride,member_casual,day_of_week,month_of_start_started_at
FROM `adept-lodge-374014.bikeshare_cyclistic.cleaned_combined_data`
group by ride_id ,member_casual,day_of_week,month_of_start,started_at
---------------code for abstarting the places casual member prefer to visit and from where they start--------------------------------
select Count(ride_id) as no_of_ride,start_lat,start_lng,member_casual,start_station_name,end_lat,end_lng,end_station_name
from `adept-lodge-374014.bikeshare_cyclistic.cleaned_combined_data`
group by member_casual,start_lat,start_lng,member_casual,start_station_name,end_lat,end_lng,end_station_name
------------------code for abstrating member-casual bike preference behaviour----------------------------------------
select count(ride_id) as no_of_rides,rideable_type,member_casual
from `adept-lodge-374014.bikeshare_cyclistic.cleaned_combined_data`
group by rideable_type,member_casual

