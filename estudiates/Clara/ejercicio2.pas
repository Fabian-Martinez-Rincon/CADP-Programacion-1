program valorAbsoluto;
var
    numero:Real;
begin
    WriteLn('Ingrese un numero real:');
    ReadLn(numero);
    if numero < 0 then
        numero := numero * -1;

    WriteLn('El valor absoluto es: ', numero:0:2);
end.