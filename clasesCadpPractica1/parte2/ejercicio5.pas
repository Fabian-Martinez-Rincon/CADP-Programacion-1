program practica1Parte2ejercicio5;
var
    num, max, min, suma: integer;
    primero: boolean;
begin
    suma := 0;
    primero := true;

    repeat
        writeln('Ingrese un numero: ');
        readln(num);

        if (primero) then
        begin
            max := num;
            min := num;
            primero := false;
        end
        else
            begin
                if (num > max) then
                    max := num;
                if (num < min) then
                    min := num;
            end;
    
        suma := suma + num;
    until (num = 100);

    writeln('Maximo: ', max);
    writeln('Minimo: ', min);
    writeln('Suma total: ', suma);
end.