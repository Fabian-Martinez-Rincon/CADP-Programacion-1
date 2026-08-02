{Dado los siguientes programas indicar qué imprime cada uno.
1b:
program alcance2;
procedure dos (b: integer);
begin
  b := 9;
  writeln(b);
end;
var a,b: integer;
begin
  a:= 4;
  b:= 8;
  dos(b);
  writeln(b, a);
end.}

program alcance2;

procedure dos(b: integer);
begin
    b := 9;
    writeln(b);
end;

var 
    a, b: integer;

begin
    a := 4;
    b := 8;

    dos(b);

    writeln(b, a);
end.