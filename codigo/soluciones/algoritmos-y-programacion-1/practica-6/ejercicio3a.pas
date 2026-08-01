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
begin {programa principal}
    readln(suma);
    readln(cant);
    if (calcularPromedio(suma, cant) <> -1) then
    begin
        cant := 0;
        writeln('El promedio es: ', calcularPromedio(suma, cant))
    end
    else
        writeln('Dividir por cero no parece ser una buena idea');
end.