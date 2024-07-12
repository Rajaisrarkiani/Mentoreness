SELECT 
    market_segment_type, COUNT(*) AS segment_count
FROM
    hotel
GROUP BY market_segment_type
ORDER BY segment_count DESC
LIMIT 1;