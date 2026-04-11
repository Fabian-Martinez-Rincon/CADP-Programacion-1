program repeatUntil;
var
    numero:Integer;
    maximo, minimo,sumaTotal:integer;
begin
    maximo := -9999;
    minimo := 9999;
    sumaTotal := 0;
    WriteLn('Ahora con repeat:'); // Si debe procesarce
    repeat
        WriteLn('Ingrese un numero:');
        ReadLn(numero);
        WriteLn('El numero ingresado es: ', numero);
        if numero > maximo then
            maximo := numero;
        if numero < minimo then
            minimo := numero;
        sumaTotal := sumaTotal + numero;
    until numero = 100;

    WriteLn('El numero mayor es: ', maximo);
    WriteLn('El numero menor es: ', minimo);
    WriteLn('La suma total es: ', sumaTotal);

end.