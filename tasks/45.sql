SELECT name
  FROM ships
  WHERE name LIKE '% % %'
UNION
SELECT ship
  FROM outcomes
  WHERE ship LIKE '% % %'
-- Задание: 45 (Serge I: 2002-12-04)
-- Найдите названия всех кораблей в базе данных, состоящие из трех и более слов (например, King George V).
-- Считать, что слова в названиях разделяются единичными пробелами, и нет концевых пробелов.