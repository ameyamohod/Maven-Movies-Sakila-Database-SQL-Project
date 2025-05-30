SELECT
staff.staff_id,staff.first_name,staff.last_name,
COUNT(*) AS rental_count
FROM rental
JOIN staff ON rental.staff_id = staff.staff_id
GROUP BY staff.staff_id
ORDER BY rental_count DESC;
