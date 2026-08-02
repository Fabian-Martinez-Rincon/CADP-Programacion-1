{Escriba un módulo que reciba como parámetro un número entero positivo n y calcule la sumatoria de los
primeros n números naturales. Para n = 5, la sumatoria es 1+2+3+4+5 = 15.}

program Sumatoria;

procedure sumaN(n: integer; var resultado: integer);
var
    i: integer;
begin
    resultado := 0;

    for i := 1 to n do
        resultado := resultado + i;
end;

var
    n, res: integer;

begin
    readln(n);
    sumaN(n, res);
    writeln('La sumatoria es: ', res);
end.