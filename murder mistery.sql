SELECT * FROM crime_scene_report WHERE type = "murder" AND date = "20180115" AND city = "SQL City";

-- Security footage shows that there were 2 witnesses. 
-- The first witness lives at the last house on "Northwestern Dr". 
-- The second witness, named Annabel, lives somewhere on "Franklin Ave".

SELECT * FROM person
WHERE address_street_name = "Northwestern Dr" 
ORDER BY address_number DESC 
LIMIT 1;
--ID de Morty Schapiro 1er testigo: 14887	

SELECT * FROM person
WHERE address_street_name = "Franklin Ave" AND name LIKE "Annabel%";

--ID de Annabel Miller 2do testigo: 16371

SELECT * FROM interview
WHERE person_id = "14887";

--Declaracion 1er testigo: I heard a gunshot and then saw a man run out. 
--He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". 
--Only gold members have those bags. The man got into a car with a plate that included "H42W".

SELECT * FROM interview
WHERE person_id = "16371";
 
--Declaracion 2do testigo: I saw the murder happen, and I recognized the killer from my gym when 
--I was working out last week on January the 9th.

SELECT * FROM get_fit_now_member
WHERE id LIKE "48Z%" AND membership_status = "gold";

--ID de Joe Germuska 1er sospechoso : 28819
--ID de Jeremy Bowers 2do sospechoso: 67318

SELECT p.id FROM person p JOIN drivers_license d
ON p.license_id = d.id
WHERE plate_number LIKE "%H42W%";
              
SELECT p.id FROM person p 
	JOIN get_fit_now_member g ON g.person_id = p.id
	JOIN drivers_license d ON p.license_id = d.id 
WHERE plate_number LIKE "%H42W%" AND g.id like "%48Z%" AND membership_status = "gold";
              
--ID del asesino: 67318

SELECT * FROM person  
WHERE id = "67318";

--asesino: Jeremy Bowers

SELECT * FROM interview  
WHERE person_id = "67318";
              
--	I was hired by a woman with a lot of money. 
--I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
--She has red hair and she drives a Tesla Model S. 
--I know that she attended the SQL Symphony Concert 3 times in December 2017.

SELECT date, event_name FROM  facebook_event_checkin
WHERE event_name = "SQL Symphony Concert" and date like "201712%";

SELECT person_id, count(*)as veces FROM  facebook_event_checkin
WHERE event_name = "SQL Symphony Concert" and date like "201712%"
group by person_id
having veces = 3;

SELECT person_id, count(*)as veces FROM  facebook_event_checkin f
JOIN person p ON f.person_id = p.id
JOIN drivers_license d ON p.license_id = d.id 
WHERE event_name = "SQL Symphony Concert" and car_make = "Tesla" and car_model = "Model S"
group by person_id
having veces = 3;

--ID de la asesina: 99716

SELECT * FROM facebook_event_checkin f JOIN person p
ON f.person_id = p.id
WHERE id = 99716

--asesina: Miranda Priestly
