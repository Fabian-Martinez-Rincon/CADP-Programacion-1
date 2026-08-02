{Ejercicio resuelto de comparación de memoria "Cuál de las dos opciones consume menos memoria total
(memoria estática + memoria dinámica)": Opción A (lista enlazada). Carga 6 nodos con new(nue) dentro de un
for, cada uno con un campo entero (dato) y un puntero al nodo siguiente (sig). Memoria estática: 14 bytes
(l, nue: 4+4; i: 6). Memoria dinámica: 6 * 10 bytes = 60 bytes. Memoria total calculada: 74 bytes. Nota: el
for usa "for i:=l to 6" (letra "l" en vez del número 1), tal como está en la fuente original.}

program opcio_A;
type
    lista = ^nodo;
    nodo = record
        dato:integer;
        sig:lista;
    end;
var
    l,nue:lista;
    i:integer;
begin
    l:=Nil;
    for i:=l to 6 do begin
        new(nue);
        nue^.dato:=i;
        nue^.sig:=l;
        l:=nue;
    end;
end.