-- source file
-- QUERY 1
SELECT 
    COUNT(Booking_ID) AS total_number_of_reservations
FROM
    hotel;
    
-- QUERY 2
SELECT 
    SUM(no_of_children) AS total_children,
    SUM(no_of_adults) AS total_adults
FROM
    hotel;
    
-- QUERY 3
SELECT 
    room_type_reserved,
    ROUND(AVG(no_of_weekend_nights + no_of_week_nights),
            2) AS avg_nights
FROM
    hotel
GROUP BY room_type_reserved;

-- QUERY 4
SELECT 
    type_of_meal_plan AS popular_among_guests, COUNT(*) AS Count
FROM
    hotel
GROUP BY type_of_meal_plan
ORDER BY Count DESC
LIMIT 1;


-- QUERY 5
SELECT 
    MAX(lead_time) AS highest_lead_time,
    MIN(lead_time) AS lowest_lead_time
FROM
    hotel;
    
    
-- QUERY 6
SELECT 
    COUNT(*) AS confirmed_reservations
FROM
    hotel
WHERE
    booking_status = 'Not_Canceled';
    
-- QUERY 7
SELECT 
    room_type_reserved, COUNT(*) AS booking_count
FROM
    hotel
GROUP BY room_type_reserved
ORDER BY booking_count DESC
LIMIT 1;


-- QUERY 8
SELECT 
    market_segment_type, COUNT(*) AS segment_count
FROM
    hotel
GROUP BY market_segment_type
ORDER BY segment_count DESC
LIMIT 1;

-- QUERY 9
SELECT 
    ROUND(AVG(avg_price_per_room), 2) AS avg_price_per_room_involving_children
FROM
    hotel
WHERE
    no_of_children != 0;
    
-- QUERY 10
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


-- QUERY 11
SELECT 
    market_segment_type, round(AVG(avg_price_per_room),1) AS avg_price
FROM
    hotel
GROUP BY market_segment_type
ORDER BY avg_price DESC
LIMIT 1;

-- QUERY 12
select 
avg(no_of_weekend_nights)
from hotel
where no_of_children !=0;

-- QUERY 13
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


-- QUERY 14
SELECT 
    market_segment_type, round(AVG(avg_price_per_room),1) AS avg_price
FROM
    hotel
GROUP BY market_segment_type
ORDER BY avg_price DESC
LIMIT 1;


-- QUERY 15
SELECT 
    COUNT(*) AS 2017_reservations
FROM
    hotel
WHERE
    arrival_date LIKE '%2017';


