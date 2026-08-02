// No corresponde a ninguno de los 15 ejercicios ni a los 2 adicionales del PDF de la Práctica 4; no hay
// enunciado verificable en las fuentes. Ejercicio suelto de inserción ordenada: recorre un vector
// desordenado de 5 enteros y va insertando cada elemento en su posición correcta dentro de un segundo
// vector (BuscarPosicion + Insertar), igual que la técnica "Manteniendo un orden" de la teoría de arreglos.

program InsertarOrdenado;
type
    vector = array [1..5] of integer;
    orden = array [1..5] of integer;

//_________________________________________
procedure CargarVector(var v:vector);
var
    i:integer;
    numero:integer;
begin
    for i:=1 to 5 do
    begin
        readln(numero);
        v[i]:=numero;
    end;
end;
//_________________________________________
Function BuscarPosicion ( x: integer; var v:orden): integer;
var
    pos : integer;
begin
    pos:=1;
    while (pos<=5) and (x > v[pos]) do 
        pos:=pos+1;
    BuscarPosicion:= pos;
    end; 
//_________________________________________    
Procedure Insertar (var v:vector; pos: integer; elem:integer);
    var j: integer;
    begin
        for j:= 5 downto pos do 
            v [ j +1 ] := v [ j ] ;
        v [ pos ] := elem; 
        writeln('Cosa',v [ pos ]);
    End;

//_________________________________________
procedure InsertarElemOrd(var o:orden;numero:integer);
var
    pos:integer;
begin
    pos:=BuscarPosicion(numero,o);
    Insertar(o,pos,numero);
end;
//_________________________________________
procedure ordenarVector(v:vector;var o:orden);
var
    i:integer;
begin
    for i:=1 to 5 do
    begin
        InsertarElemOrd(o,v[i]);
        //writeln('nro: ',o[i]);
    end;
end;
//_________________________________________
procedure inicializarOrden(var o:orden);
var
    i:integer;
begin
    for i:=1 to 5 do
    begin
        o[i]:=9999;
    end;
end;
//_________________________________________
var
    v:vector;
    o:orden;
begin
    inicializarOrden(o);
    CargarVector(v);
    //ImprimirVector(v);
    writeln('__________');
    ordenarVector(v,o);
end.