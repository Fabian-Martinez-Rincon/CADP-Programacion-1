{Variante independiente del ejercicio 5 de la Práctica 3 (porcentaje de números pares e impares): misma idea
(contar pares e impares con mod 2) pero usando cantidadNumeros := 10 en lugar de 50, nombres de variable
distintos, y la lógica de la comparación invertida.}

program porcentajeParesImpares;
var
    numero:Integer;
    contadorPares, contadorImpares:Integer;
    i:integer;
    cantidadNumeros:Integer;
    porcentajePares, porcentajeImpares:Real;
begin
    contadorPares:=0;
    contadorImpares:=0;
    cantidadNumeros:=10;
    for i:=1 to cantidadNumeros do
    begin
        WriteLn('Ingrese un numero:');
        ReadLn(numero);
        if not (numero mod 2 = 0) then
            contadorImpares:=contadorImpares+1
        else
            contadorPares:=contadorPares+1
    end;
    porcentajePares:=(contadorPares/cantidadNumeros)*100;
    porcentajeImpares:=(contadorImpares/cantidadNumeros)*100;
    writeln('Porcentaje de numeros pares: ', porcentajePares, '%');
    writeln('Porcentaje de numeros impares: ', porcentajeImpares:0:2, '%');
end.