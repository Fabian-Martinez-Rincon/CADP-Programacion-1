// Programa de práctica libre (sin enunciado numerado del PDF de la Práctica 5). Tres punteros a integer
// (p1,p2,p3); p3 := p1 los deja apuntando a la misma celda y luego se opera con p1^/p2^/p3^: practica el
// alias de punteros visto en la teoría, esta vez con aritmética en vez de solo lectura.

program probandoPunteros;

Type
    pint= ^integer;

var  x : integer;
       p1, p2, p3: pint;	
begin		
    read (x) ;		
    new (p1) ;		
    new(p2) ;		
    p1^ := x ;		
    p2^ := p1^ + 1 ;		
    read (x) ;		
    p1^:= x ;		
    p3 := p1 ; 		
    p1^ := p1^+p2^;		
    writeln ('Elemento en p1: ', p1^);
    writeln ('Elemento en p2: ', p2^);
    writeln ('Elemento en p3: ', p3^);
End.


