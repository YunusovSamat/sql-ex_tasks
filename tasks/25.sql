WITH prod_pc AS (
  SELECT maker, speed
    FROM product p JOIN pc
      ON p.model = pc.model
    WHERE ram = (SELECT MIN(ram) FROM pc)
      AND maker IN (
        SELECT maker FROM product
          WHERE type = 'Printer'
        )
)
SELECT DISTINCT maker
  FROM prod_pc
  WHERE speed = (SELECT MAX(speed) FROM prod_pc)
-- Задание: 25 (Serge I: 2003-02-14)
-- Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM. Вывести: Maker