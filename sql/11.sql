/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */

SELECT film.film_id, title, COUNT(inventory_id) FROM film 
INNER JOIN inventory ON film.film_id = inventory.film_id 
GROUP BY film.film_id 
HAVING title LIKE 'H%' 
ORDER BY title DESC;
