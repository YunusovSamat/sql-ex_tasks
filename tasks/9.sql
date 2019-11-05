SELECT DISTINCT maker 
  FROM product INNER JOIN pc
    ON product.model = pc.model 
      AND speed >= 450
-- Задание: 9 (Serge I: 2002-11-02)
-- Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker