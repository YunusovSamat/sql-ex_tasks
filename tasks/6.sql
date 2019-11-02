SELECT DISTINCT maker, speed FROM Product INNER JOIN Laptop
  ON Product.model = Laptop.model AND hd >= 10
-- Задание: 6 (Serge I: 2002-10-28)
-- Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.