program mayorDeLosDos;
var
    num1, num2: integer;
begin
    writeln('Ingrese el primer numero:');
    readln(num1);
    writeln('Ingrese el segundo numero:');
    readln(num2);

    if num1 > num2 then
        writeln('El mayor es: ', num1)
    else if (num1 = num2) then
        writeln('Ambos numeros son iguales: ', num1)
    else
        writeln('El mayor es: ', num2);
end.