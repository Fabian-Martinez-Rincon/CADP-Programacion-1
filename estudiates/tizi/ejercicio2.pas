program ejercicio2Practica1;
var
    numero1:integer;
    numero2:integer;
    division:Integer;
    resto:Integer;
begin
    WriteLn('Ingrese el primer numero:');
    ReadLn(numero1);
    WriteLn('Ingrese el segundo numero:');
    ReadLn(numero2);
    division := numero1 div numero2;
    resto := numero1 mod numero2;
    WriteLn('El resultado de la division es: ', division);
    WriteLn('El resto de la division es: ', resto);

end.