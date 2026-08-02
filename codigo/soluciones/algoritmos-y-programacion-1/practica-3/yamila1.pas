{Variante independiente del ejercicio 1 de la Práctica 3 (suma de 15 números y cantidad de mayores a 10),
con N = 5 en lugar de 15, que combina en un solo for tanto la suma total como el conteo de números
mayores a 10.}

program sumar15;
const
  N = 5;
var
    i, acumuladorNumeros: integer;
    numero: integer;
    numerosMayoresADiez: integer;
begin
    acumuladorNumeros := 0;
    numerosMayoresADiez := 0;
    for i := 1 to N do
    begin
        WriteLn('Ingrese un numero por teclado: ');
        ReadLn(numero);
        if numero > 10 then
            numerosMayoresADiez := numerosMayoresADiez + 1;
        acumuladorNumeros := acumuladorNumeros + numero;
    end;
    writeln('La suma de los primeros ', N, ' numeros es: ', acumuladorNumeros);
    writeln('La cantidad de numeros mayores a diez es: ', numerosMayoresADiez);
end.