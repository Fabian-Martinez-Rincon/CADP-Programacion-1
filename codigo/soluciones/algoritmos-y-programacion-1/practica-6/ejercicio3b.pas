program alcanceYFunciones;

function calcularPromedio(suma, cant: integer): real;
var
    prom: real;
begin
    if (cant = 0) then
        prom := -1
    else
        prom := suma / cant;

    calcularPromedio := prom;
end;

var
    suma, cant: integer;
    promedio: real;
begin {programa principal}
    readln(suma);
    readln(cant);

    promedio := calcularPromedio(suma, cant);

    if (promedio <> -1) then
    begin
        cant := 0;
        writeln('El promedio es: ', promedio)
    end
    else
        writeln('Dividir por cero no parece ser una buena idea');
end.