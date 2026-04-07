program cantidadImparesPrograma;

procedure contarImpares(var cantidadImpares: integer);
var
  numero: integer;
begin
    WriteLn('Ingrese un numero: ');
    ReadLn(numero);
    while numero >= 0 do
    begin
        if not (numero mod 2 = 0) then
        begin
            cantidadImpares := cantidadImpares + 1;
        end;    
        WriteLn('Ingrese otro numero: ');
        ReadLn(numero);  
    end;
end;

var
    cantidadImpares: integer;
begin
    cantidadImpares := 0;
    contarImpares(cantidadImpares);
    WriteLn('La cantidad de numeros impares ingresados es: ', cantidadImpares);
end.