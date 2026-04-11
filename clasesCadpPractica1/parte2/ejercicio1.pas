program Ejercicio1;

var
    i, num, suma: integer;

begin
    suma := 0;

    for i := 1 to 10 do
    begin
        writeln('Ingrese un numero: ');
        readln(num);
        suma := suma + num;
    end;

    writeln('La suma total es: ', suma);
end.