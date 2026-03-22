{
a. Realice un módulo que reciba dos números enteros y retorne la suma de los mismos. 
b. Implemente un programa que lea dos números enteros e informe la suma, invocando al módulo del inciso a.
}
program ejercicio1_a;
function sumar(a, b: integer): integer;
begin
    sumar := a + b;
end;

var
    num1, num2, resultado: integer;
begin
    writeln('Ingrese el primer numero entero:');
    readln(num1);
    writeln('Ingrese el segundo numero entero:');
    readln(num2);
    resultado := sumar(num1, num2);
    writeln('La suma de ', num1, ' y ', num2, ' es: ', resultado);
end.