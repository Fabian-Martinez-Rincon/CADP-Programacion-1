// Mismo enunciado que el Ejercicio 3 de la Práctica 5 (Punteros): Indicar los valores que imprime el
// siguiente programa en Pascal (numeros = array[1..10000] of integer, puntero a ese arreglo, new, carga
// parcial de 5000 elementos).

program punteros;
type
    numeros = array[1..10000] of integer;
    puntero_numeros = ^numeros;
var
    n: puntero_numeros;
    num: numeros;
    i:integer;
begin
    writeln(sizeof(n), ' bytes');
    writeln(sizeof(num), ' bytes');
    new(n);
    writeln(sizeof(n^), ' bytes');
    for i:= 1 to 5000 do
        n^[i]:= i;
    writeln(sizeof(n^), ' bytes');
    writeln(sizeof(n), ' bytes');
end.
