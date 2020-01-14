SELECT name
  FROM classes NATURAL JOIN ships
  WHERE bore = 16
UNION
SELECT ship
  FROM classes c JOIN outcomes o
    ON c.class = o.ship AND bore = 16;
-- Задание: 49 (Serge I: 2003-02-17)
-- Найдите названия кораблей с орудиями калибра 16 дюймов (учесть корабли из таблицы Outcomes).