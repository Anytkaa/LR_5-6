program z13;
var
  a: array[1..20] of integer;
  i, n, max, min: integer;
begin
  for i := 1 to 20 do
    a[i] := random(100);
  writeln('Исходный массив:');
  for i := 1 to 20 do
    write(a[i], ' ');
  writeln;
  max := a[1];
  min := a[1];
  for i := 2 to 20 do
  begin
    if a[i] > max then
      max := a[i];
    if a[i] < min then
      min := a[i];
  end;
  for i := 1 to 20 do
    if a[i] = max then
      a[i] := min
    else if a[i] = min then
      a[i] := max;
  writeln('Новый массив:');
  for i := 1 to 20 do
    write(a[i], ' ');
end.