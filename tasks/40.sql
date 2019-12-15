SELECT maker,type
  FROM product
  WHERE maker IN (
    SELECT maker
      FROM (
        SELECT DISTINCT maker, type
          FROM product
        ) AS y
      GROUP BY maker
        HAVING COUNT(type) = 1
    )
  GROUP BY maker, type
    HAVING COUNT(model) > 1
-- Задание: 40 (Serge I: 2012-04-20)
-- Найти производителей, которые выпускают более одной модели, при этом все выпускаемые производителем модели являются продуктами одного типа.
-- Вывести: maker, type