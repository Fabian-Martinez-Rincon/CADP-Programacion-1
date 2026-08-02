{Variante del ejercicio 1a (Práctica 1): lee dos números enteros y calcula el promedio con div (división
entera), a diferencia de ejercicio_1a.pas que usa / (división real) — con div, un promedio con resto se
trunca en vez de mostrar decimales.}

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