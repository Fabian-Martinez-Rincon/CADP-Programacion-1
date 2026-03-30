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