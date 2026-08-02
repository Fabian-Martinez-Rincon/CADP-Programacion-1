{Ejemplo suelto de Instagram (FaboSistemas): muestra dos operaciones sobre string que no aparecen en la
conversión de la Clase 7 (teoria.md de la Práctica 7): la función length() y el acceso a un carácter
individual del string mediante indexación nombre[i], recorriendo el string carácter por carácter con un
for.}

program cosa;

var
  nombre: string;
  i: integer;
begin
  nombre := 'Hola';

  for i := 1 to length(nombre) do
    writeln(nombre[i]);
end.