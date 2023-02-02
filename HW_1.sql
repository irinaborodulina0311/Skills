Задание: 1 (Serge I: 2002-09-30)
Найдите номер модели, скорость и размер жесткого диска 
для всех ПК стоимостью менее 500 дол. 
Вывести: model, speed и hd

Решение

SELECT model, speed, hd
FROM PC
WHERE price < 500;


Задание: 2 (Serge I: 2002-09-21)
Найдите производителей принтеров. Вывести: maker

РЕШЕНИЕ

SELECT maker 
FROM Product 
WHERE type = 'Printer' 
GROUP BY maker

Задание: 3 (Serge I: 2002-09-30)
Найдите номер модели, объем памяти и 
размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.

РЕШЕНИЕ

SELECT model, ram, screen
FROM laptop
WHERE price > 1000


Задание: 4 (Serge I: 2002-09-21)
Найдите все записи таблицы Printer для цветных принтеров.

РЕШЕНИЕ

SELECT * FROM Printer 
WHERE color = 'y'

Задание: 5 (Serge I: 2002-09-30)
Найдите номер модели, скорость и размер жесткого диска ПК, 
имеющих 12x или 24x CD и цену менее 600 дол.

РЕШЕНИЕ

select model, speed, hd
from pc
where price < 600 
and (cd = '12x' or cd = '24x')


Задание: 6 (Serge I: 2002-10-28)
Для каждого производителя, выпускающего ПК-блокноты 
c объёмом жесткого диска не менее 10 Гбайт, 
найти скорости таких ПК-блокнотов. 
Вывод: производитель, скорость.

РЕШЕНИЕ

Select DISTINCT p.maker, l.speed 
FROM laptop l  
JOIN product p ON p.model = l.model
where hd>=10


Задание: 7 (Serge I: 2002-11-02)
Найдите номера моделей и цены всех имеющихся в продаже 
продуктов (любого типа) производителя B (латинская буква).

РЕШЕНИЕ

SELECT DISTINCT product.model, pc.price
FROM Product JOIN pc ON product.model = pc.model WHERE maker = 'B'
UNION
SELECT DISTINCT product.model, laptop.price
FROM product JOIN laptop ON product.model=laptop.model WHERE maker='B'
UNION
SELECT DISTINCT product.model, printer.price
FROM product JOIN printer ON product.model=printer.model WHERE maker='B';

Задание: 8 (Serge I: 2003-02-03)
Найдите производителя, выпускающего ПК, но не ПК-блокноты.

РЕШЕНИЕ

SELECT DISTINCT maker
FROM product
WHERE type = 'pc'
EXCEPT
SELECT DISTINCT product.maker
FROM product
Where type = 'laptop'


