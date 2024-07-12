SELECT 
    room_type_reserved,
    ROUND(AVG(no_of_weekend_nights + no_of_week_nights),
            2) AS avg_nights
FROM
    hotel
GROUP BY room_type_reserved;
