{Realizar un programa que lea 15 edades de personas. Informar cuántas corresponden a personas mayores de
edad (18 o más) y cuántas a menores de edad.}
program ejercicio4;
var
  i, edad, mayores, menores: integer;
begin
  mayores := 0;
  menores := 0;

  for i := 1 to 15 do
  begin
    readln(edad);

    if (edad >= 18) then
      mayores := mayores + 1
    else
      menores := menores + 1;
  end;

  writeln('Cantidad de mayores de edad: ', mayores);
  writeln('Cantidad de menores de edad: ', menores);
end.