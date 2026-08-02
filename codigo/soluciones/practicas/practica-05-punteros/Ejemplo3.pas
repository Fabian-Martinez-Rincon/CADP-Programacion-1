// Programa de práctica libre (sin enunciado numerado del PDF de la Práctica 5). Procedimiento
// cambiar(var pun1; pun2) que reasigna un puntero recibido por referencia a partir de otro recibido por
// valor: variante corta de "redirigir el puntero del llamador desde el procedimiento" visto en la teoría.

program punterosC;
type
  cadena = string[50];
  puntero_cadena = ^cadena;

procedure cambiar(var pun1: puntero_cadena;  
                  pun2: puntero_cadena);
begin
  pun1:= pun2;
end;

var
  p1, p2: puntero_cadena;
begin
  new(p1);
  p1^:= 'Hoy es lunes';
  writeln('El contenido de p1^: ', p1^);
  cambiar(p2, p1);//P2 obtiene el valor de p1
  writeln('El contenido de p1^: ', p1^);
  writeln('El contenido de p2^: ', p2^);
end.



