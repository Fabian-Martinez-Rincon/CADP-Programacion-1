{Realizar un programa que lea números reales hasta que se ingrese uno cuyo valor sea 0. Informar la cantidad
de números leídos.}
program ejercicio2;
var
  numero: real;
  cant: integer;
begin
  cant := 0;
  WriteLn('Ingrese numeros reales (ingrese 0 para finalizar):');
  readln(numero);
  while (numero <> 0) do
  begin
    cant := cant + 1;
    WriteLn('Ingrese numeros reales (ingrese 0 para finalizar):');
  end;

  writeln('La cantidad de numeros leidos es: ', cant);
end.