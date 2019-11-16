SELECT maker, COUNT(model) FROM product
  WHERE type = 'PC'
  GROUP BY maker
  HAVING COUNT(model) > 2
-- Задание: 20 (Serge I: 2003-02-13)
-- Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.