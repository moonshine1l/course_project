-- Сколько туров приходится на определенный вид транспорта
SELECT transport.title, count(transport.title) as tours
from journey
inner join transport
on journey.transport_id = transport.id
Group by transport.title; 