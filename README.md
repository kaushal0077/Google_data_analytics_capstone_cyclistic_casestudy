# Google_data_analytics_capstone_cyclistic_casestudy
## Table of Contents
1. [INTRODUCTION](#INTRODUCTION)
2. [BUSINESS TASK](#BUSINESSTASK)
3. [PREPARE](#PREPARE)
4. [PROCESSING AND CLEANING](#PROCESSING-AND-CLEANING)
5. [ANALYSIS and VIZ](#ANALYSIS-AND-VIZ)
6. [CONCLUSION and RECOMMENDATIONS](#CONCLUSION-AND-RECOMMENDATIONS)

## INTRODUCTION
The goal of this project is to analyze the data from Cyclistic bike share company in Chicago. The company has two types of users: casual riders (who buy one-time passes) and members (who subscribe annually). With 5884 bikes at 692 stations, the company wants to attract more annual members for financial stability and customer loyalty.

By looking at the data, we aim to find patterns and insights that will help the company convert more casual riders into annual members. This information will be valuable for creating effective marketing strategies to encourage people to choose the annual subscription instead of just one-time passes. Ultimately, the focus is on growing the number of annual members to ensure the company's long-term success.

## BUSINESS TASK
How do annual members and casual riders use Cyclistic bikes differently ?
## PREPARE
### DATA ORGANISATION
a)Data source : Public data from Motivate International Inc. (Divvy Bicycle Sharing Service from Chicago) under this license.
Cyclistic’s historical trip data (2013 onwards) available in .csv format.
b) date range : June 2022 to May 2023 (608 MB data)
c)The dataset has individual ride records comprising of ride_id,rideeable_type,start_station,End_station detail ,dat of thier rides and membership details 
d)Data was downloaded as csv zip file then extracted and bifurcated into two csv files whose file size were greater than 100mb as Big-Query data base doesn't support greater than 100 mb data uploading .
## PROCESSING AND CLEANING
I used BigQuery to combine the various datasets into one dataset and clean it, because a worksheet can only have 1,048,576 rows in Microsoft Excel because of its inability to manage large amounts of data.  The Cyclistic dataset has more than 5.6 million rows, it is essential to use a platform like BigQuery that supports huge volumes of data.And in Rstudio too there were limited memory available for me to work with so I prefered Big-query and SQL.
### COMBINING THE DATA
To combine the data I used this [SQL Query](https://github.com/kaushal0077/Google_data_analytics_capstone_cyclistic_casestudy/commit/db9404b34e6817d9cfb586800e9607f123f6bf9b) where all of my 18 data tables were combined to give a combined_trip_data
### DATA EXPLORATION
After combining all the data it was time to explore any null value ,duplicates etc in the data I used these query to find out the null and duplicate values all the information are there in this [SQL QUERY](https://github.com/kaushal0077/Google_data_analytics_capstone_cyclistic_casestudy/commit/366d86804e55a86fdf18b1bde3013e126c26cf87)
### DATA CLEANING
[SQL QUERIES](https://github.com/kaushal0077/Google_data_analytics_capstone_cyclistic_casestudy/commit/750cb601f47ca4bab90b10649c245f447756e724) for the cleaning is here 
1. all the null rows were deleted 
2. Any duplicate data  is removed 
3. day_of_week ,month_of_start new column were created
##  ANALYSIS AND VIZ
[SQL QUERY](https://github.com/kaushal0077/Google_data_analytics_capstone_cyclistic_casestudy/commit/92d7c4f2dfbebeee394e8769cf8694f34f2988f1)for data analyis ,There are 1734722 casual rider and 2724224  annual rider it can be seen [here](https://public.tableau.com/app/profile/kaushal.verma/viz/CASUAL_MEMBER_DATA/Sheet2) I analysed data with total number of rides carried out by casual and member and found this [insight](https://public.tableau.com/app/profile/kaushal.verma/viz/finalgoogledataanalyticsprojectcomplete/Story1) in Tableau
 seeing the behaviour of casual and member behaviour per month I found this it suggested that casual member are more active in  june,july and august   months
 next I plotted the casual and member behaviour in day of the weeek and found  that they are active in weekend more and annual member are active in weekdays more 
 next I plotted casual and member behaviour against the hour of the day so that I could get an idea about in weekend at which time  casual member are more active and found they are more active on 4-6 pm at the evening.I also searched the starting and end station of both casual and member rider and found[this](https://public.tableau.com/app/profile/kaushal.verma/viz/GOOGLE_DATA_ANALYTICS_CAPSTONE_PROJECT/Sheet1)for starting station and [this](https://public.tableau.com/app/profile/kaushal.verma/viz/GOOGLE_DATA_ANALYTICS_PROJECT/Sheet2) for end station which sugggested casual rider used bikes for recreational activity where annaul member use it for daily activity.all with all these behaviour I also found thier bike-preferences [here](https://public.tableau.com/app/profile/kaushal.verma/viz/casual_meber_bike_prefrence/Sheet1)
## CONCLUSION AND RECOMMENDATIONS
After analyzing the different behaviour of casual and member these marketing startegies could be considered to convert casual to annual member.
1. run marketing campain on these months near the recreational site
2. Give discount on the weekend bike ride specially at evenining time around these time interval as mostly casual member prefer to ride on weekends 
3. also annual prefer all three types of bike among which classic bike,it can also think to give some offer on docked bike as there is no demand of it in members and there are some casual member having demand of docked bike in this way its demand will also get increased.

