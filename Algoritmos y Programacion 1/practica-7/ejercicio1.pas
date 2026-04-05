program EjercicioPersonas;

type
    persona = record
        nombre: string;
        edad: integer;
    end;

{---------------------------}
{ Módulo para leer persona }
{---------------------------}
procedure leerPersona(var p: persona);
begin
    readln(p.nombre);
    if (p.nombre <> 'ZZZ') then
        readln(p.edad);
end;

var
    p: persona;
    maxEdad, minEdad: integer;
    nombreMax, nombreMin: string;
    primero: boolean;

begin
    primero := true;

    leerPersona(p);

    while (p.nombre <> 'ZZZ') do
    begin
        if (primero) then
        begin
            maxEdad := p.edad;
            minEdad := p.edad;
            nombreMax := p.nombre;
            nombreMin := p.nombre;
            primero := false;
        end
        else
        begin
            { máximo }
            if (p.edad > maxEdad) then
            begin
                maxEdad := p.edad;
                nombreMax := p.nombre;
            end;

            { mínimo }
            if (p.edad < minEdad) then
            begin
                minEdad := p.edad;
                nombreMin := p.nombre;
            end;
        end;

        leerPersona(p);
    end;

    writeln('Persona de mayor edad: ', nombreMax);
    writeln('Persona de menor edad: ', nombreMin);
end.