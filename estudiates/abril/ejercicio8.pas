program sumarRestarSecuencia;
var
    numero: integer;
    caracter:Char;
    resultadoSecuencia: integer;
    otroNumero: integer;
begin
    resultadoSecuencia := 0;
    WriteLn('ingrese un caracter');
    ReadLn(caracter);
    otroNumero := 0; 
    if (caracter = '+') or (caracter = '-') then
    begin
        WriteLn('Caracter valido');
        WriteLn('Ingrese un numero');
        readLn(numero); //4
        resultadoSecuencia := numero; // 4
        while numero <> 0 do
        begin
            if caracter = '+' then
                resultadoSecuencia := resultadoSecuencia + otroNumero
            else
                resultadoSecuencia := resultadoSecuencia - otroNumero; // 10 - 10
            readLn(numero);
            otroNumero := numero; // 3
        end;
        WriteLn('El resultado de la secuencia es: ', resultadoSecuencia);
    end
    else
    begin
        WriteLn('Caracter no válido');
    end;
end.