{Dado el siguiente programa (con type alumno = record codigo, nombre, promedio; end; y
procedure leer(var alu: alumno) ya provistos):
a. Completar el programa principal para que lea información de alumnos (código, nombre, promedio) e
informe la cantidad de alumnos leídos. La lectura finaliza cuando ingresa un alumno con código 0. Nota:
utilizar el módulo leer.
b. Modificar al programa anterior para que, al finalizar la lectura de todos los alumnos, se informe
también el nombre del alumno con mejor promedio.}

program Registros;
type
    alumno = record
        codigo : integer;
        nombre : string;
        promedio : real;
    end;

procedure leer(var alu : alumno);
begin
    writeln('Ingrese el codigo del alumno');
    readln(alu.codigo);
    if (alu.codigo <> 0) then
    begin
        writeln('Ingrese el nombre del alumno');
        readln(alu.nombre);
        writeln('Ingrese el promedio del alumno');
        readln(alu.promedio);
    end;
end;

var
    a : alumno;
    cant : integer;
    mejorPromedio : real;
    nombreMejor : string;
begin
    cant := 0;

    leer(a);
    if (a.codigo <> 0) then
    begin
        mejorPromedio := a.promedio;
        nombreMejor := a.nombre;

        while (a.codigo <> 0) do
        begin
            cant := cant + 1;

            if (a.promedio > mejorPromedio) then
            begin
                mejorPromedio := a.promedio;
                nombreMejor := a.nombre;
            end;

            leer(a);
        end;

        writeln('La cantidad de alumnos leidos es: ', cant);
        writeln('El alumno con mejor promedio es: ', nombreMejor);
    end
    else
        writeln('No se ingresaron alumnos.');
end.