program promedioALumnos;
var
    legajo:integer;
    promedio:real;
    cantidadAlumnos:integer;
    alumnosSuperaSeis:integer;
    alumnosDestacados:integer;
    porcentajeDestacados:real;
begin
    porcentajeDestacados := 0;
    alumnosDestacados := 0;
    cantidadAlumnos := 0;
    alumnosSuperaSeis := 0;
    writeln('Ingrese el legajo del alumno:');
    ReadLn(legajo);
    while not (legajo = -1) do
    begin
        writeln('Ingrese el promedio del alumno:');
        ReadLn(promedio);
        cantidadAlumnos := cantidadAlumnos + 1;
        if promedio > 6.5 then
        begin
            alumnosSuperaSeis := alumnosSuperaSeis + 1;
        end;
        if (promedio > 8.5) and (legajo < 2500) then
        begin
            alumnosDestacados := alumnosDestacados + 1;
        end;
        writeln('Ingrese el legajo del alumno:');
        ReadLn(legajo);
    end;
    writeln('Cantidad de alumnos ingresados: ', cantidadAlumnos);
    writeln('Cantidad de alumnos que superan el promedio de 6.5: ', alumnosSuperaSeis);
    writeln('Cantidad de alumnos destacados: ', alumnosDestacados);
    if cantidadAlumnos > 0 then
    begin
        porcentajeDestacados := (alumnosDestacados / cantidadAlumnos) * 100;
        writeln('Porcentaje de alumnos destacados: ', porcentajeDestacados:0:2, '%');
    end;
end.