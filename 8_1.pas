var
    arr: array[1..15] of byte;
    i, k, num, frq , max_frq: byte;
begin
    randomize;
    for i:=1 to 15 do begin
        arr[i] := random(20);
        write(arr[i],' ');
    end;
    writeln;

    num := arr[1];
    max_frq := 1;
    for i:=1 to 15-1 do begin
        frq := 1;
        for k:=i+1 to 15 do
            if arr[i] = arr[k] then 
                frq := frq + 1;
        if frq > max_frq then begin
            max_frq := frq;
            num := arr[i];
        end;
    end;

    if max_frq > 1 then
        writeln(max_frq, ' раз(а) встречается число ', num)
    else
        writeln('Все элементы уникальны');
end.
