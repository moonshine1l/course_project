-- Тур, который брали чаще всего
SELECT  journey.title, count(journey.title)
FROM customer_has_journey
INNER JOIN journey
ON customer_has_journey.journey_id = journey.id
GROUP BY journey.title
ORDER BY count(journey.id) DESC
LIMIT 1;