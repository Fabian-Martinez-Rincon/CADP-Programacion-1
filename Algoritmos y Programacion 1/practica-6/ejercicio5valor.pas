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