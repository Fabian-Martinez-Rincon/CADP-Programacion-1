{Realizar un programa que lea 15 números enteros e informe la suma total de los números leídos.}
program ejercicio1;
var
  i, numero, suma: integer;
begin
  suma := 0;

  for i := 1 to 15 do
  begin
    readln(numero);
    suma := suma + numero;
  end;

  writeln('La suma total es: ', suma);
end.