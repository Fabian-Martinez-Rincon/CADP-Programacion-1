program dosMinimos;
var
    numero:integer;
    minimo1:integer;
    minimo2:integer;
    i:integer;
begin
    minimo1 := 9999;
    minimo2 := 9999;
    for i := 1 to 10 do
    begin
        writeln('Ingrese un numero:');
        readln(numero);
        if numero < minimo1 then
        begin
            minimo2 := minimo1;
            minimo1 := numero;
        end
        else if (numero < minimo2) and (numero <> minimo1) then
            minimo2 := numero;
    end;
    writeln('El primer minimo es: ', minimo1);
    writeln('El segundo minimo es: ', minimo2);
end.