SELECT maker FROM product
  WHERE type = 'PC'
EXCEPT
SELECT maker FROM product
  WHERE type = 'Laptop'
-- Задание: 8 (Serge I: 2003-02-03)
-- Найдите производителя, выпускающего ПК, но не ПК-блокноты.