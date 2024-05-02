1- SELECT title from film
   ORDER BY title ASC;
2- SELECT DISTINCT rating from film
   ORDER BY rating ASC;
3- SELECT DISTINCT rating,rental_rate,title FROM film
   WHERE rating LIKE "%PG-13%" OR "%PG%"
   ORDER BY rental_rate DESC, title ASC;
4- SELECT city, co.country FROM city c JOIN country co ON c.country_id
   GROUP BY country;
5- 