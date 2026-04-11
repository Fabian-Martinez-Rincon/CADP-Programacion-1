program ejercicioSuma;

procedure cantidadImpares(var cantidadImp: integer);
var
    numero:integer;
begin
    cantidadImp := 0;
    WriteLn('Ingrese un numero: ');
    ReadLn(numero);
    while numero > 0 do
    begin
        if numero mod 2 = 1 then
            cantidadImp := cantidadImp + 1;
        WriteLn('Ingrese numero: ');
        ReadLn(numero);
    end;
end;

var
    cantidadImp: integer;
begin
    cantidadImpares(cantidadImp);
    WriteLn('La cantidad de numeros impares ingresados es: ', cantidadImp);
end.