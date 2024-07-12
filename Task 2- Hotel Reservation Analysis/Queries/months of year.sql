SELECT 
    MONTH(STR_TO_DATE(arrival_date, '%d-%m-%Y')) AS month_no,
    MONTHNAME(STR_TO_DATE(arrival_date, '%d-%m-%Y')) AS month_name,
    COUNT(*) AS reservations
FROM
    hotel
GROUP BY month_no , month_name
ORDER BY month_no;
