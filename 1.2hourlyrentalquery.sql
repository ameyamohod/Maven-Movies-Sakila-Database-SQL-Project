SELECT
    HOUR(rental_date) AS hours,
    COUNT(*) AS total_rent
FROM rental
GROUP BY hours
ORDER BY hours;