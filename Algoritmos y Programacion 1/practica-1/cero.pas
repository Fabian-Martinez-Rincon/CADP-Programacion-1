program calculoPromedio;

var
  promedio: integer;
  numero1:integer;
  numero2:integer;
begin
    promedio := 0;
    writeln('Ingrese el primer numero -> ');
    readln(numero1);
    writeln('Ingrese el segundo numero -> ');
    readln(numero2); 
    promedio := (numero1 + numero2) div 2;
    writeln('El promedio es: ', promedio);
end.