SELECT battle
  FROM ships JOIN outcomes
    ON name = ship AND class = 'Kongo'
-- Задание: 50 (Serge I: 2002-11-05)
-- Найдите сражения, в которых участвовали корабли класса Kongo из таблицы Ships.