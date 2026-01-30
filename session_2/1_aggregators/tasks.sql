-- Enable readable output format
.mode columns
.headers on

-- Instructions for students:
-- 1. Open SQLite in terminal: sqlite3 countries.db
-- 2. Load this script: .read tasks.sql
-- 3. Exit SQLite: .exit

SELECT Continent, AVG(Population) AS AveragePopulation FROM countries GROUP BY Continent;
SELECT Continent, SUM(Population) AS TotalPopulation FROM countries GROUP BY Continent;
SELECT Continent, Country, MAX(Population) AS MaxPopulation FROM countries GROUP BY Continent;
SELECT Continent, Country, MAX(Population) AS MaxPopulation FROM countries GROUP BY Continent;

SELECT Continent, AVG(Population) AS AveragePopulation FROM countries GROUP BY Continent HAVING Population > 10000000;
SELECT Continent, AVG(GDPPerCapita) AS AverageGDPPerCapita FROM countries GROUP BY Continent HAVING LiteracyPercent > 80;
SELECT Continent, Country, MAX(BirthRate) AS MAXBirthRate FROM countries GROUP BY Continent HAVING InfantMortalityPer1000 < 30;
SELECT Continent, AVG(GDPPerCapita) AS AverageGDPPerCapita FROM countries GROUP BY Continent HAVING LiteracyPercent > 80 AND AverageGDPPerCapita >10000 ORDER BY AverageGDPPerCapita DESC;
SELECT Continent, SUM(Population) AS TotalPopulation FROM countries GROUP BY Continent HAVING TotalPopulation > 500000000 AND BirthRate < 20 ORDER BY TotalPopulation DESC LIMIT 3;