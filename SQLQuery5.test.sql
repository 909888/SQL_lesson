USE MASTER
GO
DROP DATABase db_test1
GO
CREATE DATABASE db_test1
GO
USE db_test1
GO

CREATE TABLE names_Test
    (Customer_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
     customer_fname VARCHAR (50) NOT NULL,
	 customer_lname VARCHAR (50) NOT NULL);

INSERT INTO names_Test
(customer_fname, customer_lname)
VALUES ('Mike', 'Lopez')

INSERT INTO names_Test
(customer_fname, customer_lname)
VALUES ('Joe', 'Lesly')

INSERT INTO names_Test
(customer_fname, customer_lname)
VALUES ('Dre', 'Van Helen');	

CREATE TABLE phad_test
(phad_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
phonenumber VARCHAR (50) NOT NULL,
address VARCHAR (50) NOT NULL,
Customer_id INT FOREIGN KEY REFERENCES names_Test(Customer_id));

INSERT INTO phad_test
(phonenumber, address,Customer_id)
VALUES ('970-009-0001', '5624 NE 19th ST Boring UT', 1)

INSERT INTO phad_test
(phonenumber, address,Customer_id)
VALUES ('970-099-1001', '2621 SE 30th ST Somewhere ND',2)

INSERT INTO phad_test
(phonenumber, address,Customer_id)
VALUES ('979-809-5501', '9604 NW 8th ST Knowhere CA',2);


SELECT * FROM names_Test

SELECT * FROM phad_test


INNER JOIN phad_test ON names_Test.Customer_id = phad_test.phad_id


--SELECT * FROM tbl_habitat; -- drill 1 --

--SELECT tbl_species.species_name FROM tbl_species 
--WHERE tbl_species.species_order = 3; -- drill 2 --

--SELECT tbl_nutrition.nutrition_type FROM tbl_nutrition 
--WHERE tbl_nutrition.nutrition_cost >= 600.00; 
------drill 3

--SELECT species_name, nutrition_id FROM tbl_nutrition  
--INNER JOIN tbl_species ON tbl_nutrition.nutrition_id = tbl_species.species_nutrition 
--WHERE nutrition_id BETWEEN  2202 and 2206 ; drill 4

--SELECT tbl_species.species_name AS [Species Name:], tbl_nutrition.nutrition_type 
--AS [Nutrition Type:] FROM tbl_species 
--INNER JOIN tbl_nutrition ON tbl_species.species_nutrition = tbl_nutrition.nutrition_id ; drill 5

SELECT * FROM tbl_specialist

--SELECT * FROM tbl_species

--SELECT tbl_specialist.specialist_fname, tbl_specialist.specialist_lname, tbl_specialist.specialist_contact FROM tbl_care

--INNER JOIN tbl_species ON tbl_species.species_care = tbl_care.care_id 
--INNER JOIN tbl_specialist ON tbl_care.care_specialist = tbl_specialist.specialist_id WHERE tbl_species.species_name = 'penguin';
 