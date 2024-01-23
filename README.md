# Google_data_analytics_capstone_cyclistic_casestudy
## Table of Contents
1.Introduction
2.Business Task
3.Data
4.Processing and Cleaning
5.Analysis and Viz
6.Conclusion and Recommendations

## INTRODUCTION
The goal of this project is to analyze the data from Cyclistic bike share company in Chicago. The company has two types of users: casual riders (who buy one-time passes) and members (who subscribe annually). With 5884 bikes at 692 stations, the company wants to attract more annual members for financial stability and customer loyalty.

By looking at the data, we aim to find patterns and insights that will help the company convert more casual riders into annual members. This information will be valuable for creating effective marketing strategies to encourage people to choose the annual subscription instead of just one-time passes. Ultimately, the focus is on growing the number of annual members to ensure the company's long-term success.
##ASK
### BUSINESS TASK
How do annual members and casual riders use Cyclistic bikes differently ?
##PREPARE
### DATA ORGANISATION
a)Data source : Public data from Motivate International Inc. (Divvy Bicycle Sharing Service from Chicago) under this license.
Cyclistic’s historical trip data (2013 onwards) available in .csv format.
b) date range : June 2022 to May 2023 (608 MB data)
c)The dataset has individual ride records comprising of ride_id,rideeable_type,start_station,End_station detail ,dat of thier rides and membership details 
d)Data was downloaded as csv zip file then extracted and bifurcated into two csv files whose file size were greater than 100mb as Big-Query data base doesn't support greater than 100 mb data uploading .
##PROCESS
I used BigQuery is used to combine the various datasets into one dataset and clean it.because A worksheet can only have 1,048,576 rows in Microsoft Excel because of its inability to manage large amounts of data. Because the Cyclistic dataset has more than 5.6 million rows, it is essential to use a platform like BigQuery that supports huge volumes of data.And Rstudio also have limited space alloted to work on a work space So I prefered Bigquery.
##COMBINING DATA
All uploaded file is then combined using this [SQL query](
