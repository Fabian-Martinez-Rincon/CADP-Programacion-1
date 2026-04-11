program ejercicio5;
var
    numero:Real;
begin
    WriteLn('Ingrese un numero:');
    ReadLn(numero);
    if numero < 0 then
        numero:= numero * -1;
    WriteLn('El absoluto es: ', numero:0:2);
end.