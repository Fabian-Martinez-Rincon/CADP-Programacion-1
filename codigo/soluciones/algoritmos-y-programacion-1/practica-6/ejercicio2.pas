{Dado el siguiente programa, indicar cuál es el error.
program alcance4;
  function cuatro: integer;
  begin
    cuatro:= 4;
  end;
var a: integer;
begin
  cuatro;
  writeln(a);
end.}

program alcance4;

function cuatro: integer;
begin
    cuatro := 4;
end;

var 
    a: integer;

begin
    a := cuatro;

    writeln(a);
end.