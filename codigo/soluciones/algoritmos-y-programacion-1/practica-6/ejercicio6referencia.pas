{El factorial de un número n se expresa como n! y se define como el producto de todos los números desde 1
hasta n. Por ejemplo, el factorial de 6 (6!) es 1*2*3*4*5*6 = 720. Escriba un módulo que reciba un número
n y retorne su factorial.}

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