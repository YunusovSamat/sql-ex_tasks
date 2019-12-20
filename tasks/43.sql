SELECT name
  FROM battles
  WHERE YEAR(date) NOT IN
    (SELECT launched
       FROM ships
       WHERE launched IS NOT NULL
     )

--SELECT name
--  FROM battles
--  WHERE NOT EXISTS (
--      SELECT launched
--        FROM ships
--        WHERE launched = YEAR(date)
--      )
    
--SELECT name
--  FROM battles
--  WHERE YEAR(date) IN
--    (SELECT YEAR(date)
--       FROM battles
--     EXCEPT
--     SELECT launched
--       FROM ships
--    )
-- Задание: 43 (qwrqwr: 2011-10-28)
-- Укажите сражения, которые произошли в годы, не совпадающие ни с одним из годов спуска кораблей на воду.