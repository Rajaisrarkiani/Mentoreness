SELECT 
    room_type_reserved, COUNT(*) AS booking_count
FROM
    hotel
GROUP BY room_type_reserved
ORDER BY booking_count DESC
LIMIT 1;
