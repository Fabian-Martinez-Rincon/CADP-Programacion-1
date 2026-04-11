program buscarMayor;
var
    numero1:integer;
    numero2:integer;
begin
    writeln('Ingrese el primero nro:');
    readln(numero1);
    writeln('Ingrese el segundo nro:');
    readln(numero2);
    writeln('Los dos numeros son: ', numero1, ' y ', numero2);
    if numero1 > numero2 then
        writeln('El numero mayor es: ', numero1)
    else if numero1 = numero2 then
        writeln('Los numeros son iguales')
    else
        writeln('El numero mayor es: ', numero2);
end.