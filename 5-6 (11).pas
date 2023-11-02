program z11;
var
  a: array[1..20] of integer;
  i, n: integer;
begin
  for i := 1 to 20 do
    a[i] := random(101) - 50;
  writeln('Исходный массив:');
  for i := 1 to 20 do
    write(a[i], ' ');
  writeln;
  n := 0;
  for i := 1 to 20 do
    if a[i] >= 0 then
    begin
      n := n + 1;
      a[n] := a[i];
    end;
  writeln('Новый массив:');
  for i := 1 to n do
    write(a[i], ' ');
end.