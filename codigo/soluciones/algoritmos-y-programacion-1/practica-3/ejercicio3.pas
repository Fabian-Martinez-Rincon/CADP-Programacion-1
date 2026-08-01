{Un negocio registra las ventas de los 7 días de la semana. Realizar un programa que lea el monto total vendido
cada día e informe: el monto total vendido en la semana y el promedio de ventas diarias.}
program ejercicio3;
var
  i: integer;
  venta, total, promedio: real;
begin
  total := 0;

  for i := 1 to 7 do
  begin
    readln(venta);
    total := total + venta;
  end;

  promedio := total / 7;

  writeln('El monto total vendido en la semana es: ', total:0:2);
  writeln('El promedio de ventas diarias es: ', promedio:0:2);
end.