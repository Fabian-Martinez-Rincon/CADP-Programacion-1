program ejercicio5;

var
    legajo:integer;
    promedio:real;
    cantidadEstudiantes:integer;
    cantidadMayores6:integer;
    cantidadDestacados:integer;
    porcentaje:real;
begin
    porcentaje := 0;
    cantidadDestacados := 0;
    cantidadMayores6 := 0;
    cantidadEstudiantes := 0;
    Writeln('____________');
    writeln('Ingrese el legajo del alumno: ');
    readln(legajo);
    while (legajo <> -1) do
    begin
        writeln('Ingrese el promedio del alumno: ');
        readln(promedio);
        if (promedio > 8.5 and legajo < 2500) then
            cantidadDestacados := cantidadDestacados + 1;
        cantidadEstudiantes:= cantidadEstudiantes + 1;
        if promedio > 6.5 then
            cantidadMayores6 := cantidadMayores6 + 1;
        Writeln('____________');
        writeln('Ingrese el legajo del alumno: ');
        readln(legajo);
    end;
    writeln('Cantidad de estudiantes ingresados: ', cantidadEstudiantes);
    writeln('Cantidad de estudiantes con promedio mayor a 6.5: ', cantidadMayores6);
    porcentaje := (cantidadDestacados / cantidadEstudiantes) * 100;
    writeln('Porcentaje de estudiantes destacados: ', porcentaje:0:2, '%');
end.