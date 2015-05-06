{Задача 1: Дан массив B(12). Найти минимальный элемент среди положительных
элементов. Вывести на экран его значение и номер.}
program task1;

type
    {Тип элемента вектора.}
    Value = real;

    {Тип, описывающий массив.}
    Vector = array [0..11] of Value;

{Функция возвращает индекс наименьшего положительного элемента в массиве. Если
все элементы массива меньше либо равны нулю, то возвращаемое значение меньше
нуля.}
function getMinPositiveElementIndex(const v: Vector): integer;
var
    i, res: integer;
begin
    {Инициализируем переменную, хранящую индекс наименьшего положительного
     элемента массива.}
    res := -1;
    {Перебираем последовательно элементы массива. Если рассматриваемый элемент
     больше нуля и ещё не было рассмотрено ни одного положительного элемента,
     или данный элемент меньше текущего кандидата на звание наименьшего
     положительного элемента, то сохраняем его индекс.}
    for i := 0 to length(v) - 1 do
        if ((v[i] > 0) and ((res < 0) or (v[i] < v[res]))) then
            res := i;
    getMinPositiveElementIndex := res;
end;

{Функция считывает массив со стандартного устройства ввода.}
function readVector(): Vector;
var
    i: integer;
    v: Vector;
begin
    for i := 0 to length(v) - 1 do
    begin
        write('B[', i,'] = ');
        readln(v[i]);
    end;
    writeln();
    readVector := v;
end;

var
    i: integer;
    v: Vector;
begin
    {Считываем массив.}
    v := readVector();

    {Ищем минимальный положительный элемент массива.}
    i := getMinPositiveElementIndex(v);

    {Выводим результат.}
    if (i < 0) then
        {Все элементы массива меньше либо равны нулю.}
        writeln('All elements are <= 0')
    else
        {Выводим найденный элемент и его индекс.}
        writeln('Element:', v[i], ' Index: ', i);
end.
