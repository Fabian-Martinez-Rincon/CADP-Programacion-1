program alcanceYFunciones;

function calcularPromedio(suma, cant: integer): real;
var
    prom: real;
begin
    if (cant = 0) then
        prom := -1
    else
        prom := suma / cant;

    calcularPromedio := prom;  { ← FALTA ESTO }
end;

function calcularPromedio(suma, cant: integer): real;
var
    prom: real;
begin
    if (cant = 0) then
        prom := -1
    else
        prom := suma / cant;
end;

var
    suma, cant: integer;
    prom: real;

begin
    readln(suma);
    readln(cant);

    prom := calcularPromedio(suma, cant);

    if (prom <> -1) then
    begin
        cant := 0;
        writeln('El promedio es: ', prom);
    end
    else
        writeln('Dividir por cero no parece ser una buena idea');
end.