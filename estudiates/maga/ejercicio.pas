program Ejericico5;
var
    legajo:integer;
    promedio:real;
    contadorAlumnos:integer;
    contadorSuperaPromedio:integer;
    contadorMejores:integer;
    porcentajeMejores:real;
begin
    porcentajeMejores := 0;
    contadorAlumnos := 0;
    contadorSuperaPromedio := 0;
    contadorMejores := 0;

    writeln('Ingrese el legajo del estudiante:');
    readln(legajo);
    while (legajo <> -1) do
    begin
        writeln('Ingrese el promedio del estudiante:');
        readln(promedio);
        contadorAlumnos := contadorAlumnos + 1;
        if promedio > 6.5 then
            contadorSuperaPromedio := contadorSuperaPromedio + 1;
        if (promedio > 8.5) and (legajo < 2500) then
        begin
            contadorMejores := contadorMejores + 1;
        end;
        writeln('Ingrese el legajo del estudiante:');
        readln(legajo);
    end;
    writeln('La cantidad de alumnos ingresados es: ', contadorAlumnos);
    writeln('La cantidad de alumnos que superan el promedio de 6.5 es: ', contadorSuperaPromedio);
    if contadorAlumnos > 0 then
    begin
        porcentajeMejores := (contadorMejores / contadorAlumnos) * 100;
        writeln('El porcentaje de alumnos con promedio mayor a 8.5 y legajo menor a 2500 es: ', porcentajeMejores:0:2, '%');
    end
end.