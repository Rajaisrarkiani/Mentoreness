SELECT 
    market_segment_type, round(AVG(avg_price_per_room),1) AS avg_price
FROM
    hotel
GROUP BY market_segment_type
ORDER BY avg_price DESC
LIMIT 1;
