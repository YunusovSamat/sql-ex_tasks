SELECT AVG(price) FROM
  (SELECT price FROM product JOIN pc
       ON product.model = pc.model
     WHERE maker = 'A'
   UNION ALL
   SELECT price FROM product JOIN laptop
       ON product.model = laptop.model
     WHERE maker = 'A'
  ) AS x
-- Задание: 26 (Serge I: 2003-02-14)
-- Найдите среднюю цену ПК и ПК-блокнотов, выпущенных производителем A (латинская буква). Вывести: одна общая средняя цена.