SELECT DISTINCT c.maker, a.priceA price
  FROM (SELECT MIN(price) priceA 
          FROM Printer 
          WHERE color ='y'
       ) a JOIN Printer b 
    ON a.priceA = b.price 
      AND b.color = 'y'
  JOIN Product c 
    ON b.model = c.model
-- Задание: 18 (Serge I: 2003-02-03)
-- Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price