var
a: array[1..10] of Integer;
i: Integer;
ord: Boolean;
begin
// Заполняем массив
for i := 1 to 10 do
begin
Write('Введите элемент массива a[', i, ']: ');
Read(a[i]);
end;

// Проверяем упорядоченность массива
ord := True;
for i := 2 to 10 do
begin
if a[i] < a[i-1] then
begin
ord := False;
Break;
end;
end;

// Выводим результат
if ord=true then
WriteLn('Массив упорядочен по возрастанию.')
else
WriteLn('Массив не упорядочен по возрастанию.');
end.