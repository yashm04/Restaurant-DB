USE BUDT703_Project_0501_10

DROP TABLE IF EXISTS [AOD.Rating]
DROP TABLE IF EXISTS [AOD.Food]
DROP TABLE IF EXISTS [AOD.Menu]
DROP TABLE IF EXISTS [AOD.Customer]
DROP TABLE IF EXISTS [AOD.Restaurant]

CREATE TABLE [AOD.Restaurant](
	rstId VARCHAR(23) NOT NULL,
	rstName VARCHAR(30) ,
	rstStreet VARCHAR(26) ,
	rstCity VARCHAR(20),
	rstState VARCHAR(15),
	rstOpenTime TIME,
	rstCloseTime TIME,
	rstLink VARCHAR(30),
	rstAvgRating decimal(2,1),
	rstContact BIGINT,
	mnuId VARCHAR(3),
	CONSTRAINT pk_Restaurant_rstId PRIMARY KEY (rstId))

CREATE TABLE [AOD.Customer](
	cstId VARCHAR(23) NOT NULL,
	cstLastName VARCHAR(20),
	cstFirstname VARCHAR(20),
	cstGender CHAR(1),
	cstAddcity VARCHAR(50),
	cstAddsttate CHAR(2),
	CONSTRAINT PK_Customer_cstId PRIMARY KEY(cstId))

CREATE TABLE [AOD.Menu](
	mnuId VARCHAR(3) NOT NULL,
	rstId VARCHAR(23),
	CONSTRAINT pk_Menu_mnuId PRIMARY KEY (mnuId),
	CONSTRAINT fk_Menu_rstId FOREIGN KEY (rstId)
		REFERENCES [AOD.Restaurant] (rstId)
		ON DELETE CASCADE on UPDATE CASCADE)

CREATE TABLE [AOD.Food](
	fodId VARCHAR(3) NOT NULL,
	fodName VARCHAR(30),
	fodType VARCHAR(20),
	fodPrice FLOAT(10),
	fodAvailability VARCHAR(1),
	mnuId VARCHAR(3) NOT NULL,
	rstId VARCHAR(23) NOT NULL,
	CONSTRAINT pk_Food_fodId PRIMARY KEY(fodId),
	CONSTRAINT fk_Food_mnuId FOREIGN KEY (mnuId)
		REFERENCES [AOD.Menu] (mnuId)
		ON DELETE NO ACTION ON UPDATE No ACTION)

CREATE TABLE [AOD.Rating](
	rtnDate DATE,
	rtnRating FLOAT(1),
	rtnComments CHAR(2000),
	rstId VARCHAR(23) NOT NULL,
	cstId VARCHAR(23) NOT NULL,
	CONSTRAINT fk_Rating_rstId FOREIGN KEY (rstId)
		REFERENCES [AOD.Restaurant] (rstId)
		ON DELETE CASCADE on UPDATE CASCADE,
	CONSTRAINT fk_Rating_cstId FOREIGN KEY (cstId)
		REFERENCES [AOD.Customer] (cstId)
		ON DELETE CASCADE on UPDATE CASCADE)





