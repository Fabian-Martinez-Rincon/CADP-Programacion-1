// No tiene enunciado ni comentario que lo vincule a ningún ejercicio de esta práctica: multiplica con una
// function dentro de un for. total se usa como acumulador y como uno de los factores de la propia
// multiplicación en la misma expresión (total := total + multiplicar(i,total)), y arranca en 0 — por lo
// que, siguiendo la lógica del código, el resultado se mantiene en 0 en cada vuelta (0 más "algo por 0").

program ultimo;

function multiplicar (x, y : integer) : integer;

begin

   multiplicar := x*y;

end;

var

  i, total : integer;

begin

   total := 0;

   for i := 1 to 5 do
   begin

       total := total + multiplicar(i,total);
       
    end;

writeln('la suma del producto de los números entre 1 y 5 es: ', total);

end.