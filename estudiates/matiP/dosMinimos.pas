program dosMinimos;
const
    CANTIDAD_NUMEROS = 5;

procedure calcularDosMinimos(var minimo1:Integer; var minimo2:Integer);
var
    i:Integer;
    numero:Integer;
begin
    minimo1 :=9999;
    minimo2 :=9999;
    for i:=1 to CANTIDAD_NUMEROS do
    begin
        WriteLn('Ingrese el numero ', i, ':');
        ReadLn(numero);
        if numero < minimo1 then
        begin
            minimo2 := minimo1;
            minimo1 := numero;
        end
        else if (numero < minimo2) then
        begin
            minimo2 := numero;
        end;
    end;
end;
var
    minimo1:Integer;
    minimo2:Integer;
begin
    calcularDosMinimos(minimo1, minimo2);
    WriteLn('Los dos minimos son: ', minimo1, ' y ', minimo2);
end.