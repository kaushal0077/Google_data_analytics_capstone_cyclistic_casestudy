----------------------------------------------
SELECT count(ride_id) as no_of_ride
FROM `adept-lodge-374014.bikeshare_cyclistic.cleaned_combined_data` 
group by rideable_type

---------------------------------------------------
SELECT count(ride_id)as no_of_ride,member_casual,day_of_week,start_station_name,end_station_name,month_of_start,started_at
FROM `adept-lodge-374014.bikeshare_cyclistic.cleaned_combined_data`
group by ride_id ,member_casual,day_of_week,start_station_name,end_station_name,month_of_start,started_at
-----------------
