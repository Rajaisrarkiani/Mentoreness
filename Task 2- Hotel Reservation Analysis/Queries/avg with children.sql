SELECT 
    room_type_reserved,
    COUNT(*) AS count,
    round(AVG(avg_price_per_room),2) AS avg_price
FROM
    hotel
WHERE
    no_of_children!= 0
GROUP BY room_type_reserved
ORDER BY count DESC
LIMIT 1;
