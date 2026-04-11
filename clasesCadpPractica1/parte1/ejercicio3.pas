program ejercicio3;

var
    x, num: real;

begin
    writeln('Ingrese X:');
    readln(x);

    writeln('Ingrese un número:');
    readln(num);

    while num <> (2 * x) do
    begin
        writeln('Ingrese un número:');
        readln(num);
    end;

    writeln('Fin del programa');
end.