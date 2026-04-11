program ejercicio1;

var
    num1, num2: integer;

begin
    writeln('Ingrese el primer número:');
    readln(num1);

    writeln('Ingrese el segundo número:');
    readln(num2);

    if num1 > num2 then
        writeln('El mayor es: ', num1)
    else if num2 > num1 then
        writeln('El mayor es: ', num2)
    else
        writeln('Los números leídos son iguales');
end.