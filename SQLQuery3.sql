WITH TotalMedals AS (
    SELECT COUNT(Medal) AS Total
    FROM tabel
    WHERE Medal IS NOT NULL
)
SELECT 
    COUNT(Medal) AS Medals, 
    City,
    ROUND((COUNT(Medal) * 100.0 / (SELECT Total FROM TotalMedals)), 0) AS Percentage
FROM tabel
WHERE Medal IS NOT NULL
GROUP BY City
ORDER BY Medals DESC;