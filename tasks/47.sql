WITH out AS (
  SELECT country, ship, result
    FROM classes JOIN outcomes
      ON class = ship
  UNION
  SELECT country, name, result
    FROM outcomes JOIN ships
      ON ship = name
    NATURAL JOIN classes
  )
SELECT country 
  FROM classes NATURAL JOIN ships
UNION
SELECT country FROM out
EXCEPT
SELECT country FROM (
  (SELECT country, name
     FROM classes NATURAL JOIN ships
   UNION
   SELECT country, ship FROM out WHERE result != 'sunk'
   EXCEPT
   SELECT country, ship FROM out WHERE result = 'sunk')
  ) AS ship_save
-- Задание: 47 (Serge I: 2019-06-07)
-- Определить страны, которые потеряли в сражениях все свои корабли.