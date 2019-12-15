SELECT DISTINCT ship
  FROM battles b1 JOIN outcomes o1
    ON name = battle
  WHERE result = 'damaged'
    AND EXISTS (
      SELECT ship
        FROM battles JOIN outcomes
          ON name = battle
        WHERE ship = o1.ship
          AND date > b1.date
      )
-- Задание: 39 (Serge I: 2003-02-14)
-- Найдите корабли, `сохранившиеся для будущих сражений`; т.е. выведенные из строя в одной битве (damaged), они участвовали в другой, произошедшей позже.