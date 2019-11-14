SELECT hd FROM pc
  GROUP BY hd
  HAVING COUNT(hd) >= 2
-- Задание: 15 (Serge I: 2003-02-03)
-- Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD