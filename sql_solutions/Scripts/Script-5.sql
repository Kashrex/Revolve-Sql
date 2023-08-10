
--Which airport had most flights on weekends?

SELECT a."AIRPORT", COUNT(f."flight") AS num_flights
FROM airports AS a
JOIN flights AS f ON a."IATA_CODE" = f."origin"
WHERE EXTRACT(DOW FROM DATE(f."year" || '-' || f."month" || '-' || f."day")) IN (0, 6)
GROUP BY a."AIRPORT"
ORDER BY num_flights DESC
LIMIT 1;
