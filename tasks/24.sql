WITH all_product AS (
  SELECT model, price FROM pc 
  UNION
  SELECT model, price FROM laptop
  UNION
  SELECT model, price FROM printer
  )
SELECT model FROM all_product
  WHERE price = (
    SELECT MAX(price) 
      FROM all_product
    )
-- Задание: 24 (Serge I: 2003-02-03)
-- Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.