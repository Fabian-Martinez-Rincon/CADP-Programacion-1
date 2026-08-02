// No corresponde a ninguno de los 15 ejercicios ni a los 2 adicionales del PDF de la Práctica 4; no hay
// enunciado verificable en las fuentes. Calculadora de consola con las operaciones div y mod; no tiene
// relación temática con vectores, parece un programa de prueba de esos dos operadores.

program Calculadora;
var
    nro1:LongInt;
    nro2:LongInt;
    opcion:integer;
begin

    nro1:=0;
    nro2:=0;
    while (opcion <> 3) do
    begin
        WriteLn('Opcion.');
        WriteLn('1)Div.');
        WriteLn('2)Mod.');
        WriteLn('3)Terminar.');
        WriteLn('____________________');
        ReadLn(opcion);
        if (opcion = 1) then
        begin
            WriteLn('1)Div.');
            WriteLn('Numero 1: '); ReadLn(nro1);
            WriteLn('Numero 2:' ); ReadLn(nro2);
            WriteLn('Resultado: ',nro1 div nro2 );
        end;
        if (opcion = 2) then
        begin
            WriteLn('1)Mod.');
            WriteLn('Numero 1: '); ReadLn(nro1);
            WriteLn('Numero 2:' ); ReadLn(nro2);
            WriteLn('Resultado: ',nro1 mod nro2 );
        end;
    end;
end.