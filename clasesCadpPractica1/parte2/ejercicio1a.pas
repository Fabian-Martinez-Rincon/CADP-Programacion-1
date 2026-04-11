program Ejercicio1a;

var
    i, num, suma, mayoresA5: integer;

begin
    suma := 0;
    mayoresA5 := 0;

    for i := 1 to 10 do
    begin
        writeln('Ingrese un numero: ');
        readln(num);

        suma := suma + num;

        if num > 5 then
            mayoresA5 := mayoresA5 + 1;
    end;

    writeln('La suma total es: ', suma);
    writeln('Cantidad de numeros mayores a 5: ', mayoresA5);
end.