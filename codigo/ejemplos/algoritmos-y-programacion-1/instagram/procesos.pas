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