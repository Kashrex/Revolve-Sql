
--Which plane flew the most number of hours? And how many hours?

SELECT p.tailnum, SUM(CASE WHEN f.air_time ~ '^[0-9]+$' THEN CAST(f.air_time AS INT) ELSE 0 END) AS total_flying_hours
FROM planes AS p
JOIN flights AS f ON p.tailnum = f.tailnum
GROUP BY p.tailnum
ORDER BY total_flying_hours DESC
LIMIT 1;

