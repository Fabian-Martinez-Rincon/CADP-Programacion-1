{Realice un programa que procese información de personas. De cada persona se lee el dni, la edad y estado
civil ('s' soltero/a, 'c' casado/a, 'd' divorciado/a, 'v' viudo/a). Se leen los datos de las personas hasta
que llega el dni igual a -1. Además, de cada persona se leen los ingresos de los últimos 12 recibos de
sueldo. Se pide calcular e informar:
a. El ingreso promedio de las personas.
b. La cantidad de personas mayores de 30 años o con estado civil casado.
c. El porcentaje de personas con ingreso promedio menor a 500.000.
Modularizar la solución.
Nota: Retornar: el valor tiene que ser devuelto a quien invocó el módulo. No se debe informar en el
módulo. Recibir como parámetro: el valor se recibe en el módulo como parámetro por valor o por
referencia. No se debe leer en el módulo, ni declararlo como variable local.}

program Ejercicio_5;

{---------------------------------------------}
{ Módulo para leer los datos de una persona   }
{---------------------------------------------}
procedure leerPersona(var dni: integer; var edad: integer; var estadoCivil: char);
begin
  writeln('Ingrese DNI (-1 para terminar): ');
  readln(dni);

  if dni <> -1 then
  begin
    writeln('Ingrese edad: ');
    readln(edad);

    writeln('Ingrese estado civil (s/c/d/v): ');
    readln(estadoCivil);
  end;
end;

{-----------------------------------------------------}
{ Módulo para calcular el promedio de los 12 ingresos }
{-----------------------------------------------------}
procedure calcularIngresoPromedio(var promedio: real);
var
  i: integer;
  ingreso, suma: real;
begin
  suma := 0;

  for i := 1 to 12 do
  begin
    writeln('Ingrese ingreso del recibo ', i, ': ');
    readln(ingreso);
    suma := suma + ingreso;
  end;

  promedio := suma / 12;
end;

var
  dni, edad: integer;
  estadoCivil: char;
  ingresoPromedio: real;

  totalPersonas: integer;
  sumaIngresosPromedio: real;
  cantMayores30OCasados: integer;
  cantIngresoMenor500000: integer;

  promedioGeneral: real;
  porcentajeMenor500000: real;

begin
  {---------------------------------------------}
  { Inicialización de variables                 }
  {---------------------------------------------}
  totalPersonas := 0;
  sumaIngresosPromedio := 0;
  cantMayores30OCasados := 0;
  cantIngresoMenor500000 := 0;

  {---------------------------------------------}
  { Lectura inicial                             }
  {---------------------------------------------}
  leerPersona(dni, edad, estadoCivil);

  {---------------------------------------------}
  { Procesamiento general                       }
  {---------------------------------------------}
  while dni <> -1 do
  begin
    calcularIngresoPromedio(ingresoPromedio);

    totalPersonas := totalPersonas + 1;
    sumaIngresosPromedio := sumaIngresosPromedio + ingresoPromedio;

    { Parte b: mayores de 30 o casados }
    if (edad > 30) or (estadoCivil = 'c') then
      cantMayores30OCasados := cantMayores30OCasados + 1;

    { Parte c: ingreso promedio menor a 500000 }
    if ingresoPromedio < 500000 then
      cantIngresoMenor500000 := cantIngresoMenor500000 + 1;

    leerPersona(dni, edad, estadoCivil);
  end;

  {---------------------------------------------}
  { Resultados finales                          }
  {---------------------------------------------}
  if totalPersonas > 0 then
  begin
    { Parte a: ingreso promedio de las personas }
    promedioGeneral := sumaIngresosPromedio / totalPersonas;

    { Parte c: porcentaje de personas con ingreso promedio menor a 500000 }
    porcentajeMenor500000 := (cantIngresoMenor500000 * 100) / totalPersonas;

    writeln('-----------------------------------');
    writeln('Parte a - Ingreso promedio de las personas: ', promedioGeneral:0:2);
    writeln('Parte b - Cantidad de personas mayores de 30 o casadas: ', cantMayores30OCasados);
    writeln('Parte c - Porcentaje con ingreso promedio menor a 500000: ', porcentajeMenor500000:0:2, '%');
  end
  else
    writeln('No se ingresaron personas.');
end.