SELECT 
  CASE
    WHEN i.point IS NOT NULL THEN i.point
    ELSE o.point
  END,
  CASE
    WHEN i.date IS NOT NULL THEN i.date
    ELSE o.date
  END, inc, out
  FROM income_o i FULL JOIN outcome_o o
    ON i.point = o.point AND i.date = o.date
-- Задание: 29 (Serge I: 2003-02-14)
-- В предположении, что приход и расход денег на каждом пункте приема фиксируется не чаще одного раза в день [т.е. первичный ключ (пункт, дата)], написать запрос с выходными данными (пункт, дата, приход, расход). Использовать таблицы Income_o и Outcome_o.