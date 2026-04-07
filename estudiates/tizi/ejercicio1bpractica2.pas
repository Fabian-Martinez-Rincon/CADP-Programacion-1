program esPar;
var
    num1: integer;
begin
    WriteLn('Ingrese un numero:');
    ReadLn(num1);
    if (num1 mod 2) = 0 then
        WriteLn('El numero es par: ', num1)
    else
        WriteLn('El numero es impar: ', num1)
end.