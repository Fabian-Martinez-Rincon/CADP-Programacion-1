program pruebas;
var
    numero1:integer;
    numero2:integer;
begin
    WriteLn('Ingrese el primer numero:');  ReadLn(numero1);
    WriteLn('Ingrese el segundo numero:'); ReadLn(numero2);

    if numero1 > numero2 then
        writeln('El numero mayor es n1: ', numero1)
    else if (numero1 = numero2) then
        writeln('Los numeros son iguales')
    else
        writeln('El numero mayor es n2: ', numero2)
end.