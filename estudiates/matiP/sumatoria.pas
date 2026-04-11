program sumatoria;

procedure calcularSumatoria(n:Integer);
var
    i:Integer;
    acumulador:Integer;
begin
    acumulador := 0;
    for i:=1 to n do
    begin
        WriteLn('calculando sumatoria: ', acumulador, ' + ', i);
        acumulador := acumulador + i;
    end;
    WriteLn('La sumatoria es: ', acumulador);
end;
var

    n:Integer;
begin
    WriteLn('Ingrese un numero entero positivo:');
    ReadLn(n);
    calcularSumatoria(n);
end.