{Lee dos enteros e informa cuál es mayor (o si son iguales); no corresponde a ningún ejercicio numerado de
la Práctica 1. Es conceptualmente el mismo problema que el ejercicio 1a de la Práctica 2 ("Leer 2 números
por teclado e imprimir el mayor"), resuelto aquí de forma anticipada con una estructura if/else if/else.}

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