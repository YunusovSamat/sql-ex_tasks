SELECT maker, AVG(hd)
  FROM product JOIN pc
    ON product.model = pc.model
  WHERE maker IN (
    SELECT maker FROM product
      WHERE type = 'Printer'
    )
  GROUP BY maker
-- Задание: 27 (Serge I: 2003-02-03)
-- Найдите средний размер диска ПК каждого из тех производителей, которые выпускают и принтеры. Вывести: maker, средний размер HD.