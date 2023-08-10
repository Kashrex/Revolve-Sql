--Which manufacturer's planes had most no of flights? And how many flights?

SELECT p.manufacturer, COUNT(f.flight) AS num_flights
FROM planes AS p
JOIN flights AS f ON p.tailnum = f.tailnum
GROUP BY p.manufacturer
ORDER BY num_flights DESC
LIMIT 1;

