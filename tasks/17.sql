SELECT DISTINCT type, l.model, speed 
  FROM laptop AS l JOIN product AS p
    ON l.model = p.model 
      AND speed < ALL(SELECT speed FROM pc)
-- Задание: 17 (Serge I: 2003-02-03)
-- Найдите модели ПК-блокнотов, скорость которых меньше скорости любого из ПК.
-- Вывести: type, model, speed