INSERT INTO regions(region_name)
VALUES ("Africa");

INSERT INTO regions(region_name)
VALUES ("Middle East");

UPDATE countries SET region_id = (SELECT region_id FROM regions 
									WHERE region_name LIKE "Middle East")
		WHERE country_name IN ("Israel","Kuwait");

UPDATE countries SET region_id = (SELECT region_id FROM regions 
									WHERE region_name LIKE "Africa")
		WHERE country_name IN ("Egypt","Nigeria","Zambia","Zimbabwe");

DELETE FROM regions WHERE region_name = "Middle East and Africa";

INSERT INTO countries(country_id,country_name,region_id)
VALUES ("GH","Ghana",(SELECT region_id FROM regions WHERE region_name like "%Africa%")),("AO","Angola",(SELECT region_id FROM regions WHERE region_name like "%Africa%"));

INSERT INTO countries(country_id,country_name,region_id)
VALUES ("SA","Arabia Saudita",(SELECT region_id FROM regions WHERE region_name like "Middle East")),("IQ","Irak",(SELECT region_id FROM regions WHERE region_name like "Middle East"));