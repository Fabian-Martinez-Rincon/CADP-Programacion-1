program temperaturaMaxima;
procedure calcularMaximaTemperatura(var maximaTemperatura:Real);
var
    i:Integer;
    temperatura:Real;
begin
    for i:=1 to 7 do
    begin
        WriteLn('Ingrese la temperatura del dia ', i, ':');
        ReadLn(temperatura);
        if temperatura > maximaTemperatura then
        begin
            maximaTemperatura := temperatura;
        end;
    end;
end;

var
    maximaTemperatura:Real;
begin
    maximaTemperatura := -9999;
    calcularMaximaTemperatura(maximaTemperatura); 
    WriteLn('La temperatura maxima de la semana es: ', maximaTemperatura:0:2);
end.