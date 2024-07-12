SELECT 
    type_of_meal_plan AS popular_among_guests, COUNT(*) AS Count
FROM
    hotel
GROUP BY type_of_meal_plan
ORDER BY Count DESC
LIMIT 1;
