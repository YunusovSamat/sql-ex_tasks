SELECT ship, displacement, numGuns
  FROM classes c NATURAL RIGHT JOIN (
  SELECT DISTINCT class, ship
    FROM outcomes o LEFT JOIN ships s
       ON o.ship IN (s.name, s.class)
    WHERE battle = 'Guadalcanal'
    ) AS s
-- Задание: 46 (Serge I: 2003-02-14)
-- Для каждого корабля, участвовавшего в сражении при Гвадалканале (Guadalcanal), вывести название, водоизмещение и число орудий.