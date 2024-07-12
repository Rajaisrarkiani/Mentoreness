SELECT 
    COUNT(*) AS confirmed_reservations
FROM
    hotel
WHERE
    booking_status = 'Not_Canceled';