program ejercicio1Practica2;
var
    sumaTotal:integer;
    numero:integer;
    i:integer;
    cantidadSupera5:integer;
begin
    sumaTotal:=0;
    cantidadSupera5:=0;
    for i:=1 to 10 do
    begin
        writeln('Ingrese un numero:');
        readln(numero);
        if numero > 5 then
            cantidadSupera5:=cantidadSupera5+1;
        sumaTotal:=sumaTotal+numero;
    end;
    writeln('La suma total es: ', sumaTotal);
    writeln('La cantidad de numeros que superan el valor de 5 es: ', cantidadSupera5);
end.