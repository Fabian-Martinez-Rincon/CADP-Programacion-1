program cosa;

var
  nombre: string;
  i: integer;
begin
  nombre := 'Hola';

  for i := 1 to length(nombre) do
    writeln(nombre[i]);
end.