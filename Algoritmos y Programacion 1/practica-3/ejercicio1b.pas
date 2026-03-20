{Modifique el ejercicio para que además informe la cantidad de números mayores a 10.
}
program ejercicio1b;
var
  i, numero, suma, cantMayores10: integer;
begin
  suma := 0;
  cantMayores10 := 0;

  for i := 1 to 15 do
  begin
    readln(numero);
    suma := suma + numero;

    if (numero > 10) then
      cantMayores10 := cantMayores10 + 1;
  end;

  writeln('La suma total es: ', suma);
  writeln('La cantidad de numeros mayores a 10 es: ', cantMayores10);
end.