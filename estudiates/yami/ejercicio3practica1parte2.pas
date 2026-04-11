program seProcesaEstudiante;
type
    nota = 1..10;
var
    n: nota;
    nombre: string;
    contadorMayorOigualA8: integer;
    contadorIgual7: integer;
begin
    contadorIgual7 := 0;
    contadorMayorOigualA8 := 0;
    repeat
        writeln('Ingrese el nombre del estudiante:');
        readln(nombre);
        writeln('Ingrese la nota del estudiante (1-10):');
        readln(n);
        if n >= 8 then
            contadorMayorOigualA8 := contadorMayorOigualA8 + 1;
        if n = 7 then
            contadorIgual7 := contadorIgual7 + 1;
    until nombre = 'Z';

    writeln('Cantidad de estudiantes con nota mayor o igual a 8: ', contadorMayorOigualA8);
    writeln('Cantidad de estudiantes con nota igual a 7: ', contadorIgual7);
end.