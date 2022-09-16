SELECT YEAR(Fecha) AS Año, count(IdCarrera) AS Total
FROM races
GROUP BY YEAR(Fecha)
ORDER BY Total DESC
LIMIT 1;

SELECT d.forename, d.driverRef, COUNT(r.position) AS Total_carreras 
FROM results
JOIN drivers d ON r.driverId = d.driverId
WHERE r.position = 1
GROUP BY r.driverId
ORDER BY Total_carreras DESC
LIMIT 1;

SELECT c.name, c.location, c.country, COUNT(r.circuitId) AS cantidad_corrida FROM races r
JOIN circuits c ON r.circuitId = c.circuitId
GROUP BY r.circuitId
ORDER BY cantidad_corrida DESC
LIMIT 1;

SELECT d.forename, d.driverRef, SUM(r.points) AS Total_puntos FROM results
JOIN drivers d ON r.driverId = d.driverId
JOIN constructors c ON r.constructorId = c.constructorId
WHERE c.nationality = 'British' OR c.nationality = 'American'
GROUP BY r.driverId
ORDER BY Total_puntos DESC
LIMIT 1;