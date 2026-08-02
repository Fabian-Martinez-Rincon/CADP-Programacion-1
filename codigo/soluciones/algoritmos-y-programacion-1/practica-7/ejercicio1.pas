{- Declarar un registro que represente una persona con su nombre y edad.
- Realizar un módulo que lea y retorne los datos de una persona.
- Realizar un programa que lea personas hasta que se ingrese el nombre "ZZZ", y que calcule e informe el
nombre de la persona de mayor edad y el nombre de la persona de menor edad.}

program EjercicioPersonas;

type
    persona = record
        nombre: string;
        edad: integer;
    end;

{---------------------------}
{ Módulo para leer persona }
{---------------------------}
function leerPersona: persona;
begin
    readln(leerPersona.nombre);
    if (leerPersona.nombre <> 'ZZZ') then
        readln(leerPersona.edad);
end;

var
    p: persona;
    maxEdad, minEdad: integer;
    nombreMax, nombreMin: string;
    primero: boolean;

begin
    primero := true;

    p := leerPersona;

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

        p := leerPersona;
    end;

    writeln('Persona de mayor edad: ', nombreMax);
    writeln('Persona de menor edad: ', nombreMin);
end.