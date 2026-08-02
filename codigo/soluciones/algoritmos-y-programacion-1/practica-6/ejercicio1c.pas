{Dado los siguientes programas indicar qué imprime cada uno.
1c:
program alcance3;
procedure tres;
var b: integer;
begin
  b:= 5;
  writeln(b);
end;
var a: integer;
begin
  a:= 6;
  tres;
  writeln(a, b);
end.}

program alcance3;

procedure tres;
var 
    b: integer;
begin
    b := 5;
    writeln(b);
end;

var 
    a: integer;

begin
    a := 6;

    tres;

    writeln(a, b);
end.