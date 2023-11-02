program z9;
var
  a: array[1..10] of integer;
  i, n: integer;
begin
  for i := 1 to 10 do
    a[i] :=-10+random(21);
  writeln('Исходный массив:');
  for i := 1 to 10 do
    write(a[i],' ');
  writeln;
  i := 1;
  while (i <= 10) and (a[i] <= 0) do
    i := i + 1;
  if i <= 10 then
  begin
    for n := i to 9 do
      a[n] := a[n + 1];
    writeln('Новый массив:');
    for i := 1 to 9 do
      write(a[i], ' ');
  end
  else
    writeln('В массиве нет положительных элементов');
end.