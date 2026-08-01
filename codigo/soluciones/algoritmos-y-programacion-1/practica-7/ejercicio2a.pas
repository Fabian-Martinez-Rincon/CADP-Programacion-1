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
begin
    cant := 0;
    
    leer(a);
    while (a.codigo <> 0) do
    begin
        cant := cant + 1;
        leer(a);
    end;
    
    writeln('La cantidad de alumnos leidos es: ', cant);
end.