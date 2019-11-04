SELECT product.model, price 
  FROM product JOIN pc 
    ON product.model = pc.model 
      AND maker = 'B'
UNION
SELECT product.model, price 
  FROM product JOIN laptop
    ON product.model = laptop.model
      AND maker = 'B'
UNION
SELECT product.model, price 
  FROM product JOIN printer
    ON product.model = printer.model 
      AND maker = 'B'
-- Задание: 7 (Serge I: 2002-11-02)
-- Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).