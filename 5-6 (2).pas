program z202;
const 
n = 20;
var i,chetni, pro,start,finish, sum: integer;
   A:array[0..n-1] of integer;
begin
  pro:=1;
  for i:=0 to n-1 do begin
  A[i]:=-22+random(116);
                     if (i mod 2=1) and (A[i] mod 2=0) then chetni:=chetni+1;
                     
                     if (A[i] mod 2=1) then pro:=pro*A[i];
                     end;
writeln(chetni);
writeln(pro:3);
for i := 0 to n-1 do
  write(A[i]:3);
writeln;
writeln('Введите начало и конец промежутка:');
  readln(start, finish);
  sum := 0;
  for i := 0 to n-1 do
    begin
    if (A[i] >= start) and (A[i] <= finish) then
      sum := sum + A[i];
  end;
  writeln('Сумма элементов в промежутке [', start, ', ', finish, ']: ', sum);
end.