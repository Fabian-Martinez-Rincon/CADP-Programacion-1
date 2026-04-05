program Ejercicio5;

var
  legajo: integer;
  promedio: real;
  totalAlumnos, alumnosMayor65, destacados: integer;
  porcentaje: real;

begin
  totalAlumnos := 0;
  alumnosMayor65 := 0;
  destacados := 0;

  writeln('Ingrese el legajo:');
  readln(legajo);

  while legajo <> -1 do
  begin
    writeln('Ingrese el promedio:');
    readln(promedio);

    totalAlumnos := totalAlumnos + 1;

    if promedio > 6.5 then
      alumnosMayor65 := alumnosMayor65 + 1;

    if (promedio > 8.5) and (legajo < 2500) then
      destacados := destacados + 1;

    writeln('Ingrese el legajo:');
    readln(legajo);
  end;

  if totalAlumnos > 0 then
    porcentaje := (destacados * 100) / totalAlumnos
  else
    porcentaje := 0;

  writeln('Cantidad de alumnos leida: ', totalAlumnos);
  writeln('Cantidad de alumnos con promedio mayor a 6.5: ', alumnosMayor65);
  writeln('Porcentaje de alumnos destacados con legajo menor a 2500: ', porcentaje:0:2, '%');
end.