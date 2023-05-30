-- Количество достопримечательностей по туру
SELECT  journey.title, count(sight.id)
FROM sight_has_journey
INNER JOIN journey
ON sight_has_journey.journey_id = journey.id
INNER JOIN sight
ON sight_has_journey.sight_id = sight.id
GROUP BY journey.title
;