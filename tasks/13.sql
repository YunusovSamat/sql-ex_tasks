SELECT AVG(speed) 
  FROM product JOIN pc
    ON product.model = pc.model 
      AND maker = 'A'
-- Задание: 13 (Serge I: 2002-11-02)
-- Найдите среднюю скорость ПК, выпущенных производителем A.