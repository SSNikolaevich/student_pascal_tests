{Задача 2: Дан массив B(12, 12). Найти минимальный элемент среди положительных
элементов. Вывести на экран его значение и номер.}
program task2;

type
    {Тип элемента массива.}
    Value = real;

    {Тип, описывающий массив.}
    Matrix = array [0..11, 0..11] of Value;

    {Тип, описывающий позицию элемента в двумерном массиве.}
    Position = record
        i, j: integer;
    end;

{Возвращает истинное значение в случае, если позиция является допустимой для
 массива.}
function isLegal(const p: Position): boolean;
begin
    isLegal := (p.i >= 0) and (p.j >= 0);
end;

{Функция возвращает позицию наименьшего положительного элемента в массиве. Если
все элементы массива меньше либо равны нулю, то возвращаемое значение не
является допустимой позицией для массива.}
function getMinPositiveElementPosition(const m: Matrix): Position;
var
    i, j: integer;
    res: Position;
begin
    {Инициализируем переменную, хранящую позицию наименьшего положительного
     элемента массива.}
    res.i := -1;
    res.j := -1;
    {Перебираем последовательно элементы массива. Если рассматриваемый элемент
     больше нуля и ещё не было рассмотрено ни одного положительного элемента,
     или данный элемент меньше текущего кандидата на звание наименьшего
     положительного элемента, то сохраняем его позицию.}
    for i := 0 to length(m) - 1 do
        for j := 0 to length(m[0]) - 1 do
            if ((m[i, j] > 0) and
                ((not isLegal(res)) or (m[i, j] < m[res.i, res.j]))) then
            begin
                res.i := i;
                res.j := j;
            end;
    getMinPositiveElementPosition := res;
end;

{Функция считывает массив со стандартного устройства ввода.}
function getMatrix(): Matrix;
var
    i, j: integer;
    m: Matrix;
begin
    for i := 0 to length(m) - 1 do
    begin
        for j := 0 to length(m[0]) - 1 do
        begin
            read(m[j, i]);
        end;
        readln();
    end;
    getMatrix := m;
end;

var
    m: Matrix;
    p: Position;
begin
    {Считываем массив.}
    m := getMatrix();

    {Ищем минимальный положительный элемент массива.}
    p := getMinPositiveElementPosition(m);

    {Выводим результат.}
    if (not isLegal(p)) then
        {Все элементы массива меньше либо равны нулю.}
        writeln('All elements are <= 0')
    else
        {Выводим найденный элемент и его позицию.}
        writeln('Element:', m[p.i, p.j], ' Index: [', p.i, ', ', p.j, ']');
end.
