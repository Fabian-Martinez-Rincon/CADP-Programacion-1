program ejercicio4;

var
    x, num: real;
    contador: integer;

begin
    writeln('Ingrese X:');
    readln(x);

    contador := 0;

    repeat
        writeln('Ingrese un número:');
        readln(num);
        contador := contador + 1;
    until (num = 2 * x) or (contador = 10);

    if num <> 2 * x then
        writeln('No se ha ingresado el doble de X')
    else
        writeln('Fin del programa');
end.