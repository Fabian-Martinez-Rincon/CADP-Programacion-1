program InflacionMaximaMes;

procedure maximo(tasaActual: real; mesActual: integer; var maxTasa: real; var mesMax: integer);
begin
    if (tasaActual > maxTasa) then
    begin
        maxTasa := tasaActual;
        mesMax := mesActual;
    end;
end;

var
    i, mesMax: integer;
    tasa, maxTasa: real;

begin
    maxTasa := -9999;

    for i := 1 to 12 do
    begin
        readln(tasa);
        maximo(tasa, i, maxTasa, mesMax);
    end;

    writeln('La maxima tasa de inflacion fue: ', maxTasa:0:2);
    writeln('Se registro en el mes: ', mesMax);
end.