SELECT model, type
  FROM product
  WHERE model ~ '^[0-9]+$'
    OR model ~ '^[a-zA-Z]+$';
-- Задание: 35 (qwrqwr: 2012-11-23)
-- В таблице Product найти модели, которые состоят только из цифр или только из латинских букв (A-Z, без учета регистра).
-- Вывод: номер модели, тип модели.