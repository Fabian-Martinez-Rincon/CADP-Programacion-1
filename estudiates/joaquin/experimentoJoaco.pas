program alcance2;


procedure uno;
var
    b:integer;
begin
    b:=9;
    writeln('b dentro de uno es: ', b);
end;
var
    a,b:integer;
begin
    a:=1;
    b:=2;
    WriteLn('a es: ', a);
    WriteLn('b es: ', b);
    uno;
    WriteLn('a es: ', a);
    WriteLn('b es: ', b);
end.