program MayorTemperaturaConDia;

procedure maximo(tempActual: real; diaActual: integer; var max: real; var diaMax: integer);
begin
    if (tempActual > max) then
    begin
        max := tempActual;
        diaMax := diaActual;
    end;
end;

var
    i, diaMax: integer;
    temp, maxTemp: real;
begin
    maxTemp := -9999;  { valor inicial bajo }

    for i := 1 to 7 do
    begin
        writeln('Ingrese la temperatura del dia ', i, ': ');
        readln(temp);
        maximo(temp, i, maxTemp, diaMax);
    end;

    writeln('La mayor temperatura leida fue ', maxTemp:0:1, ', en el dia ', diaMax);
end.