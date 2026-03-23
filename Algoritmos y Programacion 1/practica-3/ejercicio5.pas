{Realizar un programa que lea 50 números enteros. Informar el porcentaje de números pares y el porcentaje de
números impares.}
program ejercicio5;
var
  i, numero, cantPares, cantImpares: integer;
  porcPares, porcImpares: real;
  cantidadNumeros: integer;
begin
  cantidadNumeros := 5; // Cambiar a 50 para el caso real
  cantPares := 0;
  cantImpares := 0;

  for i := 1 to cantidadNumeros do
  begin
    readln(numero);

    if (numero mod 2 = 0) then
      cantPares := cantPares + 1
    else
      cantImpares := cantImpares + 1;
  end;

  porcPares := (cantPares * 100) / cantidadNumeros;
  porcImpares := (cantImpares * 100) / cantidadNumeros;

  writeln('Porcentaje de numeros pares: ', porcPares:0:2, '%');
  writeln('Porcentaje de numeros impares: ', porcImpares:0:2, '%');
end.