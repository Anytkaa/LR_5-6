var intArray : array[1..10] of integer; 
i, n : integer; 
begin 
writeln('Введите 10 целых чисел: '); 
for i := 1 to 10 do readLn(intArray[i]); 
if intArray[1] > intArray[2] then write('Массив не является упорядоченным по возрастанию.') 
else write('Массив упорядочен по возрастанию.'); 
end.