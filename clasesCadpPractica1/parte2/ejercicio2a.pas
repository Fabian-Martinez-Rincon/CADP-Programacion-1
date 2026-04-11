program ejercicio2a;

var
    num, max: integer;
    i, posMax: integer;

begin
    for i := 1 to 10 do
    begin
        writeln('Ingrese un numero: ');
        readln(num);

        if (i = 1) then
        begin
            max := num;
            posMax := i;
        end

        else if (num > max) then
        begin
            max := num;
            posMax := i;
        end;
    end;

    writeln('El mayor es ', max, ', en la pos ', posMax);
end.