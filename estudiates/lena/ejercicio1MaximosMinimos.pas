program calcularMaximaTemperatura;

procedure maximaTemperatura(var maximoTemperatura: real);
var
    i: integer;
    temperatura: real;
begin
    maximoTemperatura := -9999;
    for i:=1 to 7 do
    begin
        writeln('Ingrese la temperatura del dia ', i, ':');
        readln(temperatura);
        if (temperatura > maximoTemperatura) then
            maximoTemperatura := temperatura;
    end;
end;
var
    maximoTemperatura:real;
begin
    maximaTemperatura(maximoTemperatura);
    writeln('La maxima temperatura de la semana es: ', maximoTemperatura:0:2);
end.