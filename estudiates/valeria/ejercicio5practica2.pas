program ejercicio5practica2;

var
  numero: integer;
  maximo: integer;
  minimo: integer;
begin
    minimo := 9999;
    maximo := -9999;
    WriteLn('Ingrese un numero: ');
    ReadLn(numero);
    while numero <> 100 do
    begin
        if numero < minimo then
        begin
            WriteLn('El numero ', numero, ' es menor que el minimo actual ', minimo);
            minimo := numero;
        end;
            
        if numero > maximo then
        begin
            WriteLn('El numero ', numero, ' es mayor que el maximo actual ', maximo);
            maximo := numero;
        end;
            
        WriteLn('Ingrese otro numero: ');
        ReadLn(numero);
    end;
    if numero > maximo then
        maximo := numero;

    if numero < minimo then
        minimo := numero;
    WriteLn('El maximo numero ingresado fue: ', maximo);
    WriteLn('El minimo numero ingresado fue: ', minimo);
end.