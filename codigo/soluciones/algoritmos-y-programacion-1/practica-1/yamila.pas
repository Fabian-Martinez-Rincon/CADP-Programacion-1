{Ejercicio no numerado en el enunciado de la Práctica 1. Lee 5 números enteros con un for y cuenta cuántos
son iguales a 10, usando una constante MAX = 5.}

program yami;
const
    MAX = 5;
var 
  numero: integer;
    i: integer;
    contadorYamila: integer;
begin
    for i := 1 to MAX do
    begin
        writeln('Ingrese un número entero:');
        readln(numero);
        if numero = 10 then
            contadorYamila := contadorYamila + 1;
    end;
    writeln('Cantidad de números 10 ingresados: ', contadorYamila);
end.