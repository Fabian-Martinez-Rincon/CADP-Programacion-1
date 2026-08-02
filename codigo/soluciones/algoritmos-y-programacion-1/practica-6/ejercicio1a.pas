{Dado los siguientes programas indicar qué imprime cada uno.
1a:
program alcance1;
procedure uno;
var b: integer;
begin
  b := 12;
  writeln(b);
end;
var a,b: integer;
begin
  a:= 4;
  b:= 5;
  uno;
  writeln(b, a);
end.}

program alcance1;

procedure uno;
var 
    b: integer;
begin
    b := 12;
    writeln(b);
end;

var 
    a, b: integer;

begin
    a := 4;
    b := 5;

    uno;

    writeln(b, ', ', a);
end.