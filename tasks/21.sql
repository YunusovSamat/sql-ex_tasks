SELECT maker, MAX(price)
  FROM product JOIN pc
    ON product.model = pc.model
  GROUP BY maker
-- Задание: 21 (Serge I: 2003-02-13)
-- Найдите максимальную цену ПК, выпускаемых каждым производителем, у которого есть модели в таблице PC.
-- Вывести: maker, максимальная цена.