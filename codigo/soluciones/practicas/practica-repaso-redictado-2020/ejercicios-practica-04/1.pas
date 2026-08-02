// Mismo enunciado que el Ejercicio 1 de la Práctica 4 (Vectores): Dado el siguiente programa: a) ¿Qué
// valores toma la variable numeros al finalizar el primer bloque for? b) Al terminar el programa, ¿con qué
// valores finaliza la variable números? c) Si se desea cambiar la línea 11 por la sentencia
// for i:=1 to 9 do ¿Cómo debe modificarse el código para que la variable números contenga los mismos
// valores que en 1.b)? d) ¿Qué valores están contenidos en la variable numeros si la líneas 11 y 12 se
// reemplazan por: for i:=1 to 9 do  numeros[i+1] := numeros[i];

program sumador;
type
    vnums = array [1..10] of integer;
var 
    numeros : vnums;
    i:integer;
begin
    for i:=1 to 10 do
    begin
        numeros[i]:=i;
        WriteLn('nro: ', numeros[i]);
    end;
    WriteLn('_________________________');
    for i:=2 to 9 do
    begin
        numeros[i+1]:= numeros[i];
        //  2 + 1 = 3
        //  3 + 3 = 6
        //  4 + 6 = 10
        //  5 + 10 = 15
        //  6 + 15 = 21
        //  7 + 21 = 28
        //  8 + 28 = 36
        //  9 + 36 = 45 
        //  10 + 45 = 55
        WriteLn('i: ',i,' nro: ',numeros[i+1]);
    end;    
end.