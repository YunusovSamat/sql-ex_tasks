SELECT classes.class, name, country 
  FROM classes JOIN ships
    ON classes.class = ships.class 
      AND numGuns >= 10
-- Задание: 14 (Serge I: 2002-11-05)
-- Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.