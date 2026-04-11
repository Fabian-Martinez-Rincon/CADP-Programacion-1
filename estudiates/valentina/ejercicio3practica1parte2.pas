program ejericio3practica1parte2;
// NO PROCESA Zidane
var
    nombre:string;
    nota:integer;
    contadorAlumnosAprobados8:integer;
    contadorAlumnosAprobados7:integer;
begin
    contadorAlumnosAprobados8 := 0;
    contadorAlumnosAprobados7 := 0;
    repeat
    begin
        WriteLn('Ingrese el nombre del alumno:');
        ReadLn(nombre);
        WriteLn('Ingrese la nota del alumno:');
        ReadLn(nota);
        if nota >= 8 then
            contadorAlumnosAprobados8 := contadorAlumnosAprobados8 + 1;
        if nota = 7 then
            contadorAlumnosAprobados7 := contadorAlumnosAprobados7 + 1;
    end;
    until nombre = 'Zidane';
    WriteLn('La cantidad de alumnos aprobados con nota mayor o igual a 8 es: ', contadorAlumnosAprobados8);
    WriteLn('La cantidad de alumnos aprobados con nota igual a 7 es: ', contadorAlumnosAprobados7);
end.