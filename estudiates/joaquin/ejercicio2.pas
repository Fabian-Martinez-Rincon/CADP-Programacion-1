program joaquin;

var
    numero: real;
    otroNumero: real;
    esDoble: boolean;
    contadorIngresos:integer;
begin
    contadorIngresos := 0;
    writeln('Ingrese un numero:');
    ReadLn(numero); //10
    WriteLn('El numero ingresado es: ', numero:0:2); // 1 2 3 4 -> Falso
    while (esDoble = false) and (contadorIngresos < 5) do
    begin
        WriteLn('Ingrese otro numero:');
        ReadLn(otroNumero); //20
        contadorIngresos := contadorIngresos + 1; // 1 2 3 4             5
        if otroNumero = numero * 2 then
        begin
            esDoble := true;
        end
    end;

    if esDoble = false then
    begin
        WriteLn('No se ha ingresado el doble de x, se han agotado los intentos');
    end
    else 
    begin
        WriteLn('Se ha ingresado el doble de x en ', contadorIngresos, ' intentos');
    end;

    WriteLn('Fin del programa');
        
end.