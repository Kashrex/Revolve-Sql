
--Which manufactures planes had covered most distance? And how much distance?

SELECT p.manufacturer, SUM(f.distance) AS total_distance_covered
FROM planes AS p
JOIN flights AS f ON p.tailnum = f.tailnum
GROUP BY p.manufacturer
ORDER BY total_distance_covered DESC
LIMIT 1;

