SELECT class
  FROM classes c JOIN (
      SELECT ship FROM outcomes
        WHERE result = 'sunk'
      UNION
      SELECT class
        FROM outcomes JOIN ships
          ON ship = name
        WHERE result = 'sunk'
      ) AS s
    ON c.class = s.ship;
-- Задание: 48 (Serge I: 2003-02-16)
-- Найдите классы кораблей, в которых хотя бы один корабль был потоплен в сражении.