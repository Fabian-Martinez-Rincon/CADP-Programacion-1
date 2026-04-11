program ejercicio4b;

var
    num, min1, min2: integer;

begin
    min1 := 9999;
    min2 := 9999;

    readln(num);
    //Este no procesa el cero
    while (num <> 0) do
    begin
        if (num < min1) then
        begin
            min2 := min1;
            min1 := num;
        end
        else if (num < min2) then
            min2 := num;

        readln(num);
    end;

    writeln('Minimo 1: ', min1);
    writeln('Minimo 2: ', min2);
end.