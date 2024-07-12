SELECT 
    COUNT(*) AS reservation_on_weekends
FROM
    hotel
WHERE
    no_of_weekend_nights > 0;