SELECT COALESCE(i.point, o.point) point, COALESCE(i.date, o.date) date,
  out, inc
  FROM (
    SELECT point, date, SUM(inc) AS inc 
      FROM income
      GROUP BY point, date
    ) AS i
    FULL JOIN (
    SELECT point, date, SUM(out) AS out 
      FROM outcome
      GROUP BY point, date
    ) AS o
      ON i.point = o.point AND i.date = o.date
-- Задание: 30 (Serge I: 2003-02-14)
-- В предположении, что приход и расход денег на каждом пункте приема фиксируется произвольное число раз (первичным ключом в таблицах является столбец code), требуется получить таблицу, в которой каждому пункту за каждую дату выполнения операций будет соответствовать одна строка.
-- Вывод: point, date, суммарный расход пункта за день (out), суммарный приход пункта за день (inc). Отсутствующие значения считать неопределенными (NULL).