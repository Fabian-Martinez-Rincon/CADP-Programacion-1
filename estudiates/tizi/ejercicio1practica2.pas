program mayorDeDos;
var
    num1, num2: integer;
begin
    WriteLn('Ingrese el primer numero:');
    ReadLn(num1);
    WriteLn('Ingrese el segundo numero:');
    ReadLn(num2);
    if num1 > num2 then
        WriteLn('El numero mayor es: ', num1)
    else if (num1 = num2) then
        WriteLn('Ambos numeros son iguales: ', num1)
    else
        WriteLn('El numero mayor es: ', num2)
end.