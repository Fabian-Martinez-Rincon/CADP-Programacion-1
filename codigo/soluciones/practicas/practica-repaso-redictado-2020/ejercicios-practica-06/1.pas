// Mismo enunciado que el Ejercicio 1 de la Práctica 6 (Listas): Dado el siguiente programa: a. Indicar qué
// hace el programa. b. Indicar cómo queda conformada la lista si se lee la siguiente secuencia de números:
// 10 21 13 48 0. c. Implementar un módulo que imprima los números enteros guardados en la lista generada.
// d. Implementar un módulo que reciba la lista y un valor, e incremente con ese valor cada dato de la
// lista.

program JugamosConListas;
type
    lista = ^nodo;
    nodo = record
        num : integer;
        sig : lista;
    end;
//_________________________________________________    
procedure armarNodo(var L: lista; v: integer);
var
    aux : lista;
begin
    new(aux);
    aux^.num := v;
    aux^.sig := L;
    L := aux;
end;
//_________________________________________________
procedure imprimirLista(L:lista);
begin
    while (L<>nil) do
    begin
        WriteLn(L^.num);
        L:=L^.sig;
    end;
end;
//_________________________________________________
procedure aumentard(var pri:lista;numero:integer);
begin
    while (pri <> nil) do
    begin
        
        pri^.num:=pri^.num+numero;
        WriteLn(pri^.num);
        pri:=pri^.sig;
    end;
end;
//_________________________________________________
var
    pri : lista;
    valor : integer;
    numero:integer;
begin
    numero:=2;
    pri := nil;
    writeln('‘Ingrese un numero’');
    read(valor);
    while (valor <> 0) do begin
        armarNodo(pri, valor);
        writeln('‘Ingrese un numero’');
        read(valor);
    end;
    imprimirLista(pri);
    aumentard(pri,numero);
    {
        a) El programa lo unico que hace es cargar la lista, en orden contrario al que fueron ingresados, ya 
        que el ultimo se coloca siempre.
        b) 48 13 21 10
        c) Ya esta
        d) 
    }
end.