SELECT country, CAST(AVG(bore*bore*bore / 2) AS NUMERIC(6, 2)) AS mv
  FROM classes c JOIN (
      SELECT ship FROM outcomes
      EXCEPT
      SELECT name FROM ships
      UNION ALL
      SELECT class FROM ships
      ) AS s
    ON c.class = s.ship
  GROUP BY country
-- Задание: 32 (Serge I: 2003-02-17)
-- Одной из характеристик корабля является половина куба калибра его главных орудий (mw). С точностью до 2 десятичных знаков определите среднее значение mw для кораблей каждой страны, у которой есть корабли в базе данных.