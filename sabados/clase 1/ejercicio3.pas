program Ejercicio3;

var
  x, num, doble: real;

begin
  writeln('Ingrese el valor de X:');
  readln(x);

  doble := x * 2;

  writeln('Ingrese un numero:');
  readln(num);

  while num <> doble do
  begin
    writeln('Ingrese otro numero:');
    readln(num);
  end;

  writeln('Se ingreso el doble de X!');
end.