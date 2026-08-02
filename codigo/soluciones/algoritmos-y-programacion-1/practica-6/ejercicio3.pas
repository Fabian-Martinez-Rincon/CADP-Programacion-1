{Dado el siguiente programa:
program alcanceYFunciones;
function calcularPromedio (suma, cant: integer): real;
var
  prom: real;
begin
  if (cant = 0) then
    prom := -1
  else
    prom := suma / cant;
end;
var
  suma, cant: integer;
begin (programa principal)
  readln(suma);
  readln(cant);
  if (calcularPromedio(suma, cant) <> -1) then begin
    cant := 0;
    writeln('El promedio es: ', calcularPromedio(suma, cant))
  end
  else
    writeln('Dividir por cero no parece ser una buena idea');
end.
a. La función calcularPromedio calcula y retorna el promedio entre los parámetros suma y cant, pero parece
incompleta. ¿Qué debería agregarle para que funcione correctamente?
b. En el programa principal, la función calcularPromedio es invocada dos veces, pero esto podría
mejorarse. ¿Cómo debería modificarse el programa principal para invocar a dicha función una única vez?
c. Si se leen por teclado los valores 48 (variable suma) y 6 (variable cant), ¿qué resultado imprime el
programa? Considere las tres posibilidades: i) el programa original, ii) el programa luego de realizar la
modificación del inciso a), iii) el programa luego de realizar las modificaciones de los incisos a) y b).}

program alcanceYFunciones;

function calcularPromedio(suma, cant: integer): real;
var
    prom: real;
begin
    if (cant = 0) then
        prom := -1
    else
        prom := suma / cant;
end;

var
    suma, cant: integer;
begin {programa principal}
    readln(suma);
    readln(cant);
    if (calcularPromedio(suma, cant) <> -1) then
    begin
        cant := 0;
        writeln('El promedio es: ', calcularPromedio(suma, cant))
    end
    else
        writeln('Dividir por cero no parece ser una buena idea');
end.