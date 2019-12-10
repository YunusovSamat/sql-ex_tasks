SELECT country FROM classes
  WHERE type = 'bb'
INTERSECT
SELECT country FROM classes
  WHERE type = 'bc'
-- Задание: 38 (Serge I: 2003-02-19)
-- Найдите страны, имевшие когда-либо классы обычных боевых кораблей ('bb') и имевшие когда-либо классы крейсеров ('bc').