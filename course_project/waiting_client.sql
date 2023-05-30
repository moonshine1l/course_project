-- Клиенты, ожидающие отправку 
SELECT  customer.id, customer.surname, customer.name, customer.patronymic, customer.series_and_number, journey.title, customer_has_journey.date_of_departure
FROM customer_has_journey
INNER JOIN customer
ON customer_has_journey.customer_id = customer.id
INNER JOIN journey
ON customer_has_journey.journey_id = journey.id
WHERE date_of_departure >= CURDATE()
;