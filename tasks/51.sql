WITH s AS (
  SELECT name, displacement, numGuns
    FROM classes NATURAL JOIN ships
  UNION
  SELECT ship, displacement, numGuns
    FROM classes JOIN outcomes
      ON class = ship
  )
SELECT name
  FROM s NATURAL JOIN (
    SELECT displacement, MAX(numGuns) numGuns
      FROM s
      GROUP BY displacement
    ) AS s2
-- Задание: 51 (Serge I: 2003-02-17)
-- Найдите названия кораблей, имеющих наибольшее число орудий среди всех имеющихся кораблей такого же водоизмещения (учесть корабли из таблицы Outcomes).