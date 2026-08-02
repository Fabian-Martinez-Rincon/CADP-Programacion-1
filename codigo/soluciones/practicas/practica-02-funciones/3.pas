// Nota: enunciado original no identificado; descripción inferida del código.
// Lee tres caracteres (a, x, c) y cuenta cuántas veces, leyendo caracteres sucesivos en la variable c, el
// valor de c queda estrictamente entre a y x (c>a and c<x); el conteo se corta apenas se lee un carácter
// fuera de ese rango, y al final se informa la cantidad contada.

program ejercicio;
var
    a,x,c:char;
    cant:integer;
begin
    readln(a);
    readln(x);
    readln(c);
    cant:=0;
    while((c>a) and (c<x)) do  begin
        cant:=cant+1;
        readln(c);
    end;
    writeln(cant);        
end. 