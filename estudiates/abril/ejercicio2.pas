program valorAbsoluto;
var
    numero: real;
begin
    writeln('Ingrese un numero:');
    ReadLn(numero);
    if numero < 0 then
        numero := numero * -1;
    writeln('El valor absoluto es: ', numero:0:2);
end.