SELECT
store.store_id,
SUM(payment.amount) AS total_revenue
FROM payment
JOIN rental ON payment.rental_id = rental.rental_id
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN store ON inventory.store_id = store.store_id
GROUP BY store.store_id
ORDER BY total_revenue DESC
LIMIT 1;