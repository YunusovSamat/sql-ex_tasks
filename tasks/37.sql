SELECT c.class
  FROM classes c JOIN (
      SELECT ship FROM outcomes
      EXCEPT
      SELECT name FROM ships
      UNION ALL
      SELECT class FROM ships
      ) AS s
    ON c.class = s.ship
  GROUP BY c.class
  HAVING COUNT(*) = 1
-- Задание: 37 (Serge I: 2003-02-17)
-- Найдите классы, в которые входит только один корабль из базы данных (учесть также корабли в Outcomes).