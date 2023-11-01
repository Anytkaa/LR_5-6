var a:array[1..30] of integer;
i,s:integer;
begin
s:=0;
randomize;
for i:=1 to 30 do
begin
a[ i ]:=random(67)-99;
write(a[ i ],' ');
end;

for i:=1 to 30 do
if a [ i ]mod 2 = 0 then begin
writeln (a [ i ]);
end;
end.