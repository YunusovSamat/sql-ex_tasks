SELECT name
  FROM ships
  WHERE name LIKE 'R%'
UNION
SELECT ship
  FROM outcomes
  WHERE ship LIKE 'R%'
-- Задание: 44 (Serge I: 2002-12-04)
-- Найдите названия всех кораблей в базе данных, начинающихся с буквы R.