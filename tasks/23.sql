SELECT maker FROM product
  WHERE model IN (
    SELECT model FROM pc
      WHERE speed >= 750
    )
INTERSECT
SELECT maker FROM product
  WHERE model IN (
    SELECT model FROM laptop
      WHERE speed >= 750
    )
-- Задание: 23 (Serge I: 2003-02-14)
-- Найдите производителей, которые производили бы как ПК
-- со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц.
-- Вывести: Maker