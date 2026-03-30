program TestFactorial;

function factorial(n: integer): integer;
var
    i, res: integer;
begin
    res := 1;
    for i := 1 to n do
        res := res * i;
    factorial := res;
end;

var
    n: integer;

begin
    readln(n);
    writeln('El factorial es: ', factorial(n));
end.