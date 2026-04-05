program siEsVocal;
var
    caracter: Char;
    contadorVocales: integer;
    i:integer;
begin
    contadorVocales := 0;
    for i := 1 to 3 do
    begin
        WriteLn('Ingrese un caracter:');
        ReadLn(caracter);
        if (caracter = 'a') or (caracter = 'e') or (caracter = 'i') or (caracter = 'o') or (caracter = 'u') then
        begin
            contadorVocales := contadorVocales + 1;
        end;
    end;

    if contadorVocales = 3 then
        WriteLn('Las tres son vocales.')
    else if contadorVocales = 1 then
        WriteLn('Al menos un caracter no era vocal.');
end.
