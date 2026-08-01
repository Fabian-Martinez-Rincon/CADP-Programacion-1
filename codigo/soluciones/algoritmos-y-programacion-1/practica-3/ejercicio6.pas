{Realizar un programa que lea números enteros. La lectura finaliza cuando se ingresa el número 0. Informar el
porcentaje de números positivos y el porcentaje de números negativos.}
program ejercicio6;
var
  numero, cantPositivos, cantNegativos, total: integer;
  porcPositivos, porcNegativos: real;
begin
  cantPositivos := 0;
  cantNegativos := 0;

  readln(numero);
  while (numero <> 0) do
  begin
    if (numero > 0) then
      cantPositivos := cantPositivos + 1
    else
      cantNegativos := cantNegativos + 1;

    readln(numero);
  end;

  total := cantPositivos + cantNegativos;

  if (total > 0) then
  begin
    porcPositivos := (cantPositivos * 100) / total;
    porcNegativos := (cantNegativos * 100) / total;

    writeln('Porcentaje de numeros positivos: ', porcPositivos:0:2, '%');
    writeln('Porcentaje de numeros negativos: ', porcNegativos:0:2, '%');
  end
  else
    writeln('No se ingresaron numeros distintos de 0');
end.