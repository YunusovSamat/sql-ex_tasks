SELECT DISTINCT a.model, b.model, a.speed, a.ram
  FROM pc AS a, pc AS b
  WHERE a.model > b.model 
    AND a.speed = b.speed 
    AND a.ram = b.ram
-- Задание: 16 (Serge I: 2003-02-03)
-- Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.