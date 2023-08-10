
--Which manufacturer's planes had most no of flying hours? And how many hours?

SELECT p.manufacturer, SUM(CASE WHEN f.air_time ~ '^[0-9]+$' THEN CAST(f.air_time AS INT) ELSE 0 END) AS total_flying_hours
FROM planes AS p
JOIN flights AS f ON p.tailnum = f.tailnum
GROUP BY p.manufacturer
ORDER BY total_flying_hours DESC
LIMIT 1;


