program ejercicio5;

var
    legajo: integer;
    promedio: real;
    cantidadAlumnos: integer;
    cantidadMayores65: integer;
    cantidadDestacados: integer;
    porcentaje: real;

begin
    cantidadAlumnos := 0;
    cantidadMayores65 := 0;
    cantidadDestacados := 0;

    writeln('Ingrese legajo: ');
    readln(legajo);

    while legajo <> -1 do
    begin
        writeln('Ingrese promedio: ');
        readln(promedio);

        cantidadAlumnos := cantidadAlumnos + 1;

        if promedio > 6.5 then
            cantidadMayores65 := cantidadMayores65 + 1;

        if (promedio > 8.5) and (legajo < 2500) then
            cantidadDestacados := cantidadDestacados + 1;

        writeln('Ingrese legajo: ');
        readln(legajo);
    end;

    if cantidadAlumnos > 0 then
        porcentaje := (cantidadDestacados * 100) / cantidadAlumnos
    else
        porcentaje := 0;

    writeln('Cantidad de alumnos: ', cantidadAlumnos);
    writeln('Cantidad con promedio > 6.5: ', cantidadMayores65);
    writeln('Porcentaje destacados: ', porcentaje:0:2, ' %');
end.