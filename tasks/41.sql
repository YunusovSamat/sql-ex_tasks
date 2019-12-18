WITH m AS (
  SELECT maker, CASE WHEN price IS NULL THEN -1
                     ELSE price
                END AS price
    FROM product NATURAL JOIN pc
  UNION
  SELECT maker, CASE WHEN price IS NULL THEN -1
                     ELSE price
                END AS price
    FROM product NATURAL JOIN laptop
  UNION
  SELECT maker, CASE WHEN price IS NULL THEN -1
                     ELSE price
                END AS price
    FROM product pd JOIN printer pn
      ON pd.model = pn.model
  )

SELECT maker, 
    CASE WHEN -1 = ANY(SELECT price FROM m WHERE m.maker=m2.maker)
         THEN NULL
         ELSE MAX(price)
    END
  FROM m AS m2
  GROUP BY maker
-- Задание: 41 (Serge I: 2019-05-31)
-- Для каждого производителя, у которого присутствуют модели хотя бы в одной из таблиц PC, Laptop или Printer,
-- определить максимальную цену на его продукцию.
-- Вывод: имя производителя, если среди цен на продукцию данного производителя присутствует NULL, то выводить для этого производителя NULL,
-- иначе максимальную цену.