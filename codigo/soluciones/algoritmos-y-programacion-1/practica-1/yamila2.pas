{Intento de calcular el valor absoluto de un número real; no corresponde a ningún ejercicio numerado de la
Práctica 1. El código tiene un problema: pide por pantalla "Ingrese un numero real" pero nunca llama a
readln; en cambio asigna numero := -20 de forma fija, por lo que el resultado impreso (20.00) no depende
de ninguna entrada del usuario pese al mensaje mostrado.}

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