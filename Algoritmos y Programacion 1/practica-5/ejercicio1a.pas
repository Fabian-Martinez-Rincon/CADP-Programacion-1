program MayorTemperatura;

procedure maximo(tempActual: real; var max: real);
begin
    if (tempActual > max) then
        max := tempActual;
end;

var
    i: integer;
    temp, maxTemp: real;
begin
    maxTemp := -9999;  { valor inicial bien bajo }

    for i := 1 to 7 do
    begin
        writeln('Ingrese la temperatura del dia ', i, ': ');
        readln(temp);
        maximo(temp, maxTemp);
    end;

    writeln('La mayor temperatura leida fue ', maxTemp:0:1);
end.