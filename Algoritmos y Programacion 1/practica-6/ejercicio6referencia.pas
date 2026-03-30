program Factorial;

procedure factorial(n: integer; var res: integer);
var
    i: integer;
begin
    res := 1;

    for i := 1 to n do
        res := res * i;
end;

var
    n, resultado: integer;

begin
    readln(n);
    factorial(n, resultado);
    writeln('El factorial es: ', resultado);
end.