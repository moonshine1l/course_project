-- Туры типа "экскурсионный"
SELECT journey.id, journey.title, type_of_trip.type as `type`
FROM journey
INNER JOIN type_of_trip
ON journey.type_of_trip_id = type_of_trip.id
WHERE type_of_trip.type = 'экскурсионный';