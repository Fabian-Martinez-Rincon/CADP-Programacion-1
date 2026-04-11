program calcularSuma;
const
    CANT_NUMEROS = 3; //10 numeros
var
    numero:integer;
    i:integer;
    sumaTotal:integer;
    cantidadMayores5:integer;
begin
    cantidadMayores5 := 0;
    sumaTotal := 0;
    for i := 1 to CANT_NUMEROS do
    begin
        writeln('Ingrese el numero ', i, ':');
        readln(numero);
        sumaTotal := sumaTotal + numero;
        if numero > 5 then
        begin
            cantidadMayores5 := cantidadMayores5 + 1;
        end;
    end;
    Writeln('La suma total es: ', sumaTotal);
    Writeln('La cantidad de numeros mayores a 5 es: ', cantidadMayores5);
end.