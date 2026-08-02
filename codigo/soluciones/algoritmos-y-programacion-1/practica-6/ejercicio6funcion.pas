{El factorial de un número n se expresa como n! y se define como el producto de todos los números desde 1
hasta n. Por ejemplo, el factorial de 6 (6!) es 1*2*3*4*5*6 = 720. Escriba un módulo que reciba un número
n y retorne su factorial.}

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