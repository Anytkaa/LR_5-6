program zadanie_1;

var
  arr: array[1..20] of integer;
  i: integer;

begin
  writeln('Введите 20 целых чисел');
  for i := 1 to 20 do
  begin
    readln(arr[i]);
  end;
  for i := 1 to 20 do
  begin
    if arr[i] > 0 then
      arr[i] := 0
    else
      arr[i] := arr[i] * arr[i];
  end;
  writeln('Измененный массив: ');
  for i := 1 to 20 do
  begin
    writeln(arr[i]);
  end;
end.