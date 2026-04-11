program ejercicio3;

var
    nombre: string;
    nota: integer;
    aprobados, cantSiete: integer;

begin
    aprobados := 0;
    cantSiete := 0;

    repeat
        writeln('Ingrese nombre: ');
        readln(nombre);

        writeln('Ingrese nota: ');
        readln(nota);

        { Procesar SIEMPRE, incluso Zidane }
        if (nota >= 8) then
            aprobados := aprobados + 1;

        if (nota = 7) then
            cantSiete := cantSiete + 1;

    until (nombre = 'Zidane Zinedine');

    writeln('Cantidad de aprobados: ', aprobados);
    writeln('Cantidad con nota 7: ', cantSiete);
end.