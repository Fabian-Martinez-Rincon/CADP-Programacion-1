program ejercicio2;

var
    num, max: integer;
    i: integer;

begin
    for i := 1 to 10 do
    begin
        writeln('Ingrese un numero: ');
        readln(num);

        if (i = 1) then
            max := num

        else if (num > max) then
            max := num;
    end;

    writeln('El mayor numero leido fue el ', max);
end.