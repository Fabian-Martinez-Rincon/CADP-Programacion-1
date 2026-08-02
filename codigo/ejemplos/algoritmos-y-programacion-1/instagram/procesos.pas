{Ejemplo suelto de Instagram (FaboSistemas): comparación directa valor vs. referencia. Dos procedimientos
casi idénticos (ejemplo, que recibe x por valor, e incrementar, que lo recibe por referencia) aplicados a
la misma variable num, mostrando en los comentarios que solo el segundo modifica el valor original.}

program procesos;
procedure ejemplo(x: integer);
begin
  x := x + 10;
  writeln(x); { 15 }
end;

procedure incrementar(var x: integer);
begin
  x := x + 10;
end;

var
  num: integer;
begin
  num := 5;
  incrementar(num);
  writeln(num); { ahora es 15 }
end.