# student_pascal_tests

Исходный переданный мне документ с описанием задач: [scan.jpg].
Работоспособность решений проверена для [Free Pascal] 2.6.4.


## Типовые задачи для программ на Pascal.

### Задача 1
Дан массив B(12). Найти минимальный элемент среди положительных элементов.
Вывести на экран его значение и номер.

### Задача 2
Дан массив B(12, 12). Найти минимальный элемент среди положительных элементов.
Вывести на экран его значение и номер.

### Задача 3
Вычислить значение функции y = e^3 - sin^2(a - |x + a|).

### Задача 4
Вычислить значение функции y = cos(x^2), если x > 0, |x - 1|, если x <= 0.

## Замечания

### Задача 2
Проверочные входные данные в файле input.txt. Пример строки запуска:

```sh
task2 < input.txt
```

### Задача 3
Из задачи не ясно, что такое "e": просто параметр или основание
натурального логарифма. Поэтому значение данного параметра считывается наравне
с остальными. Если всё же "e" - это основание натуратльного логарифма, то
нужно просто объявить соответствующую константу в функции f.

### Задача 4
В задании не совсем чётко написано: не то просто скобки, не то выражение по
модулю. Если там действительно были просто скобки, то надо убрать abs в теле
функции f.

[scan.jpg]:https://github.com/SSNikolaevich/student_pascal_tests/blob/master/scan.jpg
[Free Pascal]:http://freepascal.org


