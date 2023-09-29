USE BUDT703_Project_0501_10

--What are the items on the menu of all restaurants and their food type and prices?
GO
CREATE VIEW [Restaurant_and_Food_Price] AS
SELECT r.rstName AS 'Restaurant Name', f.fodType AS 'Cuisine Type', f.fodName AS 'à la carte', f.fodPrice AS 'Price'
FROM [AOD.Restaurant] r, [AOD.Food] f
WHERE r.mnuId IN(
	SELECT f.mnuId
	FROM [AOD.Food]
	WHERE f.mnuId = r.mnuId)

--List all Japanese restaurant with Rating of 3 and above in and around College Park and their food details.
GO
CREATE VIEW [Japanese_Restaurant_Food_Details_With_Rating] AS
SELECT r.rstName AS 'Restaurant Name', f.fodType AS 'Cuisine Type', f.fodName AS 'à la carte', f.fodPrice AS 'Price'
FROM [AOD.Restaurant] r, [AOD.Food] f
WHERE r.mnuId IN(
	SELECT f.mnuId
	FROM [AOD.Food]
	WHERE (f.mnuId = r.mnuId) AND (f.fodType) = 'JAPANESE')
	AND r.rstAvgRating >= '3'

---What is the count of various dishes by their food type for all restaurants in and around College Park
GO
CREATE VIEW [Number of food items by Cuisine type] AS
SELECT f.fodType AS 'Cuisine Type', COUNT(r.rstId) AS 'Number of Items on the Menu'
FROM [AOD.Restaurant] r, [AOD.Food] f
WHERE r.mnuId IN (
	SELECT f.mnuId
	FROM [AOD.Food])
GROUP BY f.fodType

---List all Restaurant with average rating of 4 and above
GO
CREATE VIEW [Restaurants with Average Rating of 4 and above] AS
SELECT r.rstName AS 'Restaurant Name', r.rstAvgRating AS 'Average Restaurant Rating'
FROM [AOD.Restaurant] r
WHERE r.rstId IN (
	SELECT rt.rstId
	FROM [AOD.Rating] rt
	GROUP BY rt.rstId
	HAVING AVG(rt.rtnRating) >= '4')


-- List the review details for the restauraunt Marathon Deli
GO
CREATE VIEW [Review and Comments of Marathon Deli] AS
SELECT r.rstName AS 'Restaurant Name', rt.rtnRating AS 'Rating', rt.rtnComments AS 'Comments'
FROM [AOD.Rating] rt,[AOD.Restaurant] r
WHERE rt.rstId IN(
	SELECT r.rstId
	FROM [AOD.Restaurant] r
	WHERE r.rstId = '298_2BlF7sqUMnEo8W7XLQ')
	AND r.rstId = '298_2BlF7sqUMnEo8W7XLQ'
