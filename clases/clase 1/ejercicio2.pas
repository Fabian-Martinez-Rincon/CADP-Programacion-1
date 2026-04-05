program Ejercicio2;

var
  x: real;

begin
  writeln('Ingrese un numero real:');
  readln(x);

  if x < 0 then
    x := x * -1;

  writeln('El valor absoluto es: ', x:0:2);
end.