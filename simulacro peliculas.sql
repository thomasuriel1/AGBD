1- SELECT title from film
   ORDER BY title ASC;
2- SELECT DISTINCT rating from film
   ORDER BY rating ASC;
3- SELECT DISTINCT rating,rental_rate,title FROM film
   WHERE rating LIKE "%PG-13%" OR "%PG%"
   ORDER BY rental_rate DESC, title ASC;
4- SELECT city, co.country FROM city c JOIN country co ON c.country_id
   GROUP BY country;
5- SELECT city as ciudad,COUNT(*) AS ciudades, co.country as pais FROM city c JOIN country co ON c.country_id = co.country_id
   GROUP BY country
   ORDER BY ciudades DESC;
6- SELECT city as ciudad,COUNT(*) AS ciudades, co.country as pais FROM city c JOIN country co ON c.country_id = co.country_id
   GROUP BY country HAVING ciudades > 2
   ORDER BY ciudades DESC;
7- SELECT MIN(rental_date) AS fecha_mas_vieja , MAX(rental_date) AS fecha_mas_nueva FROM rental;
8- SELECT actor_id, fi.title FROM film_actor f JOIN film fi ON f.film_id = fi.film_id
   GROUP BY fi.film_id
   ORDER BY actor_id ASC LIMIT 10; 