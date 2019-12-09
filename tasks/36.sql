SELECT ship
  FROM classes c JOIN outcomes o
    ON c.class = o.ship
UNION
SELECT name FROM ships
  WHERE name = class
-- Задание: 36 (Serge I: 2003-02-17)
-- Перечислите названия головных кораблей, имеющихся в базе данных (учесть корабли в Outcomes).