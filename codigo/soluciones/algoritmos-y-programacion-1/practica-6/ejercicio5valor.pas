{Escriba un módulo que reciba como parámetro un número entero positivo n y calcule la sumatoria de los
primeros n números naturales. Para n = 5, la sumatoria es 1+2+3+4+5 = 15.}

program Sumatoria;

function sumaN(n: integer): integer;
var
    i, suma: integer;
begin
    suma := 0;

    for i := 1 to n do
        suma := suma + i;

    sumaN := suma;
end;

var
    n: integer;

begin
    readln(n);
    writeln('La sumatoria es: ', sumaN(n));
end.