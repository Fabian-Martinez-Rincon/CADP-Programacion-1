program Ejercicio4;

var
  x, num, doble: real;
  i: integer;
  encontrado: boolean;

begin
  writeln('Ingrese el valor de X:');
  readln(x);

  doble := x * 2;
  i := 0;
  encontrado := false;

  while (i < 10) and (not encontrado) do
  begin
    writeln('Ingrese un numero:');
    readln(num);

    i := i + 1;

    if num = doble then
      encontrado := true;
  end;

  if encontrado then
    writeln('Se ingreso el doble de X!')
  else
    writeln('No se ha ingresado el doble de X');

end.