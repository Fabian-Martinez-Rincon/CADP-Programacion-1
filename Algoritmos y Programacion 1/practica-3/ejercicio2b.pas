{Modifique el ejercicio para que se lean a lo sumo 10 números reales. La lectura deberá finalizar al ingresar un valor que sea 0, o al leer el décimo número, en cuyo caso deberá informarse “No se ha ingresado el 0”.}

program ejercicio2b;
var
  numero: real;
  cant: integer;
  llegoACero: boolean;
begin
  cant := 0;
  llegoACero := false;

  readln(numero);

  while (cant < 10) and (numero <> 0) do
  begin
    cant := cant + 1;

    if (cant < 10) then
      readln(numero);
  end;

  if (numero = 0) then
    llegoACero := true;

  writeln('La cantidad de numeros leidos es: ', cant);

  if not llegoACero then
    writeln('No se ha ingresado el 0');
end.