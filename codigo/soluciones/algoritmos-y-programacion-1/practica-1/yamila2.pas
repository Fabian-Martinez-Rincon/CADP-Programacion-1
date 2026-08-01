program sacarAbsoluto;
var
    numero: real;
begin
    writeln('Ingrese un numero real:');
    numero := -20;
    if numero < 0 then
        numero := numero * -1;
    writeln('El valor absoluto es: ', numero:0:2);
end.