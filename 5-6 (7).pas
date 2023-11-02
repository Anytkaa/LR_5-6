program z7;
var
  a: array[1..10] of integer;
  i, b, max: integer;
begin
  for i := 1 to 10 do
    a[i] := random(20) - 10;
  writeln('Массив:');
  for i := 1 to 10 do
    write(a[i], ' ');
  writeln;
  b := 1;
  max := 0;
  for i := 2 to 10 do
    if a[i - 1] <= a[i] then
      b := b + 1
    else
    begin
      if b > max then
        max := b;
      b := 1;
    end;
  if b > max then
    max := b;
  writeln('Максимальная длина неубывающего участка: ', max);
end.
