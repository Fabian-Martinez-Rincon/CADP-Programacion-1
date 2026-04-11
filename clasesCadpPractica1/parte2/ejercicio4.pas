program ejercicio4;

var
    num, min1, min2: integer;
    i: integer;

begin
    for i := 1 to 1000 do
    begin
        readln(num);

        if (i = 1) then
        begin
            min1 := num;
            min2 := num;
        end
        else
        begin
            if (num < min1) then
            begin
                min2 := min1;
                min1 := num;
            end
            else if (num < min2) then
                min2 := num;
        end;
    end;

    writeln('Minimo 1: ', min1);
    writeln('Minimo 2: ', min2);
end.