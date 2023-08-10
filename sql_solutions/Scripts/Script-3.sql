
--Which destination had most delay in flights?

SELECT dest, SUM(CASE WHEN arr_delay ~ '^-?[0-9]+$' THEN CAST(arr_delay AS INT) ELSE 0 END) AS total_delay
FROM flights
GROUP BY dest
ORDER BY total_delay DESC
LIMIT 1;

