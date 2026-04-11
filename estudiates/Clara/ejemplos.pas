program ejercicioDeClarita;
var
    numero:integer;
    i:integer;
    mayor:integer;
begin
    mayor := -9999;
    for i:=1 to 10 do
    begin
        WriteLn('Ingrese un numero:');
        ReadLn(numero);
        if numero > mayor then
            mayor := numero;
    end;
    WriteLn('El numero mayor es: ', mayor);
end.