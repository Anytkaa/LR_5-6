var a:array[1..30] of integer;
i:integer;
begin
for i:=1 to 30 do
begin
a[ i ]:=random(167)-99;//массив от -99 до 67
write(a[ i ],' ');
end;
writeln;//переход к следующей строке
for i:=1 to 30 do
if a [ i ]mod 2 = 0 then//этот же массив но элементы четные
write (a[i],' ');
end.