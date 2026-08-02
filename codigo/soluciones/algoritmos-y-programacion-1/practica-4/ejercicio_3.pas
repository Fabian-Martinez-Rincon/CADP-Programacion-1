{a. Escriba un procedimiento que lea la altura de una cantidad de personas y retorne el promedio de éstas.
La cantidad de personas se recibe como parámetro.
b. Escriba un programa que procese la altura de 30 personas utilizando el módulo desarrollado en a) e
informe el resultado.}

program Ejercicio_3;

procedure calcularPromedio(cant: integer; var promedio: real);
var
  i: integer;
  altura, suma: real;
begin
  suma := 0;

  for i := 1 to cant do
  begin
    writeln('Ingrese altura: ');
    readln(altura);
    suma := suma + altura;
  end;

  promedio := suma / cant;
end;

var
  prom: real;

begin
  prom := 0;
  calcularPromedio(3, prom);
  writeln('El promedio de alturas es: ', prom:0:2);
end.