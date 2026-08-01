program funciones;

function suma(a, b: integer): integer;
begin
  suma := a + b;
end;

function esPar(n: integer): boolean;
begin
  esPar := (n mod 2 = 0);
end;

function mayor(a, b: integer): integer;
begin
  if a > b then
    mayor := a
  else
    mayor := b;
end;

function sumaHastaN(n: integer): integer;
var
  i, suma: integer;
begin
  suma := 0;
  for i := 1 to n do
    suma := suma + i;
  sumaHastaN := suma;
end;

begin
    WriteLn(suma(5, 3));
    // Output: 8
    WriteLn(esPar(4)); 
    // Output: TRUE
    WriteLn(mayor(5, 3));
    // Output: 5
end.