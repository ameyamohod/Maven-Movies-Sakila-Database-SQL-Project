SELECT
    film.title,
    COUNT(*) AS rentalcount
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON film.film_id = inventory.film_id
GROUP BY film.title
ORDER BY rentalcount DESC
LIMIT 10;