{a. Informar la máxima tasa de inflación registrada en un mes (leyendo por teclado los valores de los
últimos 12 meses).
b. Agregar al inciso a) el código necesario para informar el mes en que se produjo la máxima tasa de
inflación.}

program InflacionMaxima;

procedure maximo(tasaActual: real; var maxTasa: real);
begin
    if (tasaActual > maxTasa) then
        maxTasa := tasaActual;
end;

var
    i: integer;
    tasa, maxTasa: real;
begin
    maxTasa := -9999;

    for i := 1 to 12 do
    begin
        writeln('Ingrese la tasa de inflacion del mes ', i, ': ');
        readln(tasa);
        maximo(tasa, maxTasa);
    end;

    writeln('La maxima tasa de inflacion fue: ', maxTasa:0:2);
end.