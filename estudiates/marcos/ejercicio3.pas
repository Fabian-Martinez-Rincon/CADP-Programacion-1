program buscarDoble;
var
    numero:Real;
    doble: Real;
begin
    writeln('Ingrese x:');
    readln(numero);
    doble := numero * 2;
    writeln('Ingrese un numero:');
    readln(numero);
    
    while numero <> doble do
    begin
        writeln('Ingrese otro numero:');
        readln(numero);
    end;
end.