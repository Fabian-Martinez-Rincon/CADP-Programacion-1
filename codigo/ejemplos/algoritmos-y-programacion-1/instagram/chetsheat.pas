{=====================================}
{ 19) PARAMETRO POR REFERENCIA        }
{ modifica la variable original       }
{=====================================}
program referencia;

procedure uno(var num: integer);
begin
  num := num + 1;
  writeln(num);
end;
var
  x: integer;
begin
  x := 7;
  uno(x);
  writeln(x);
end.