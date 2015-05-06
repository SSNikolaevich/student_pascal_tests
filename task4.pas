{Задача 4: Вычислить значение функции
    y = cos(x^2), если x > 0,
        |x - 1|, если x <= 0.

Замечание: В задании не совсем чётко было написано: не то просто скобки,
не то выражение по модулю. Если там действительно были просто скобки,
то надо убрать abs в теле функции f.}
program task4;

function f(x: real): real;
begin
    if (x > 0) then
        f := cos(x * x)
    else
        {В задании не совсем чётко было написано: не то просто скобки,
         не то выражение по модулю. Если там действительно были просто скобки,
         то надо убрать abs.}
        f := abs(x - 1);
end;

var
    x: real;

begin
    {Считываем значение параметра функции.}
    write('x = ');
    readLn(x);
    {Вычисляем и выводим значение функции.}
    writeLn('y =', f(x));
end.
