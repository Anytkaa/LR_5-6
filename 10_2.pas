program zadanie_10;
const
N = 20; // Размер массива

var
arr: array[1..N] of integer;
i, j, count: integer;

begin
writeln('Введите 20 целых чисел:');

// Заполняем массив
for i := 1 to N do
readln(arr[i]);

// Удаляем отрицательные элементы
count := 0; // Счетчик неотрицательных элементов

for i := 1 to N do
begin
if arr[i] >= 0 then
begin
count := count + 1;
arr[count] := arr[i];
end;
end;

// Заполняем оставшиеся элементы нулями
for i := count + 1 to N do
arr[i] := 0;

writeln('Массив после удаления отрицательных элементов:');

for i := 1 to N do
writeln(arr[i]);
end.