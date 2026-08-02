// Programa de práctica libre (sin enunciado numerado del PDF de la Práctica 5). Ejercicio de trazado con
// dos punteros (p, q): nil, new, alias (p:=q), reasignación de q a una celda nueva y q^:=p^ (copiar
// contenido, no puntero). Tiene tres writeln marcados {1} {2} {3} para completar como ejercicio de traza
// (sin las respuestas escritas en el archivo).

program ejercicio2;

type

  puntero = ^integer;

var

  p, q: puntero;

 

begin

  p:= nil; 

  new (q); 

  q^:= 200;

  p := q; 

  p^:= 150;

  writeln(q^); {1}

  writeln(p^); {2}

  new(q); 

  q^:= 300;

  q^ := p^;

  p:= nil;

  writeln(q^); {3}

end.