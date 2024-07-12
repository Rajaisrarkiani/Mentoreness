SELECT 
    ROUND(AVG(avg_price_per_room), 2) AS avg_price_per_room_involving_children
FROM
    hotel
WHERE
    no_of_children != 0;