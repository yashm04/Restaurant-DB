USE BUDT703_DB_Student_050
CREATE TABLE[Customer](
cstId CHAR(22) NOT NULL,
cstLastName VARCHAR(20),
cstFirstname VARCHAR(20),
cstGender CHAR(1),
cstAddcity VARCHAR(50),
cstAddsttate CHAR(2),
CONSTRAINT PK_Customer_cstId PRIMARY KEY(cstId))

--SQL insert data:

INSERT INTO[Customer] VALUES
('UiZSd7pWKJnIkBA-1-cCgg','B','Michele','F','Waldorf','MD'),
('ruh9CH6SKxO2ptJ_yIAAMA','B','Tommy','M','Uxbridge','MA'),
('o3h4H3PWNsy9_sNSVL-pKA','H','Jenniffer','F','Hyattsville','MD'),
('4W2y0bD9qApsJpaHYNcLZQ','L','Kyle','F','Laytonsvill','MD'),
('qhZEzXz_zgdhYXH_4Gn3JQ','M','Mia','F','College Park','MD'),
('S9y2M2VCti8mvaD-XAQyUg','O','Linda','F','Washington','DC'),
('OKNjfOHNMUbcfndv9pqtTg','M','Chad','M','Mankato','MN'),
('Qr6XUvW9WKuJgEi4jGPTBG','F','Nees','F','District Height','MD'),
('60GaICcbzHVQUFLYiRykRg','J','Camisha','F','Charleston','SC'),
('atb8w3SHAhNGJnpw-9uhfg','B','Monet','M','Waldorf','MD'),
('21tsfnkf1LhsIbgx4K20cA','O','Wilma','M','Chicago','IL'),
('atFzwO_8LjsErGDfZMI3Yw','W','Joshua','M','Silver Spring','MD'),
('Ic9MXFtzNM6_UEpgBpreWQ','L','Lasaudra','F','Silver Spring','MD'),
('N7hacDSWuXd6uVP0niPYGw','C','Mache','F','Washington','DC'),
('hx4oMV0RMb0qM8ZNZ9mnoOw', 'L', 'Jeena','F','pokesville','MD'),
('36rgDzetzrz-hogOgSXJIW','H','Paul','M','Clifton','NJ'),
('U_1I0QSGWoI1wkhCTYYbQ','M','Antonio','M','NJ','NJ'),
('eTPRR2Xk72mfzjIfk1ip_w','Z','Hayes','M','College Park','MD'),
('SX4DC6P_eVKNRkpNCqxJIg','C','Rachel','F','Buffalo','NY'),
('e4vFzehBeRgmo1MONLcJwA','S','Matthew','M','Potomac','MD'),
('JcnhfgofMKxS0-DvXOu0Vg','K','Nita','F','Washington','DC')

INSERT INTO[Restaurant] VALUES

('298_2BIF7sqUMnEo8W7XLQ','Marathon Deli','7412 Baltimore Ave','College Park','MD','10AM-10PM','10AM','10PM','3019276717','https://www.marathondelimd.com'),
('qJJIvbYPOBluyaTXdh1aOA','Saburo Ramen','8503 Baltimore Ave','College Park','MD','11:30AM-2:30PM,5:00PM-9:00PM','11:30AM,5PM','2:30PM,9:00PM','3012201635',NULL),
('tRhgp6syOtfBJ6MVWfw_kw','Kangnam BBQ Sport& Grill','8503 Baltimore Ave','College Park','MD','11:00AM-10:00PM','11:00AM','10:00PM','3012201635','https://www.kangnambbqcollegepark.com'),

('qa3NxPFkedBH0UQw-K22eA','Blaze Pizza','7419 Baltimore Ave','College Park','MD','11:00AM-10:00PM','11:00AM','10:00PM','3013922324','https://www.blazepizza.com' ),
(NULL,'Busboys and Poets','5331 Baltimore Ave Ste 104','5331 Baltimore Ave','Hyattsville','MD','9:00AM-10:00pm','9:00AM','10:00om',Null)
