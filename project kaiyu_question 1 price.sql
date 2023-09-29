USE BUDT703_DB_Student_050 
--What are names and types of food in which restaurants are less than or equal to $12 and rating above or equal to 4?
SELECT rstId,rstName,fodId,fodName,fodPrice,rtnRating
FROM Restaurant, Food,Rates
WHERE fodPrice<=12 AND rtnRating>=4
