{Dada la siguiente función marque las invocaciones a dicha función que considere válidas:
function cuadrado(x:integer): integer;
begin
   cuadrado:= x*x;
end
a. Write(cuadrado(8));
b. c:= cuadrado(8); Write(cuadrado);
c. If ( cuadrado = 64 ) then Write('8*8=64');
d. cuadrado(8);
e. c:= cuadrado(8); Write (c);
f. cuadrado(8, c); Write (c);
g. If ( cuadrado(8) = 64 ) then Write('8*8=64');}

program testCuadrado;

function cuadrado(x: integer): integer;
begin
    cuadrado := x * x;
end;

var
    c: integer;

begin
    { a) VALIDA ✔ }
    writeln(cuadrado(8));

    { b) INVALIDA ❌
      writeln(cuadrado); 
      ERROR: faltan parámetros
    }

    { c) INVALIDA ❌
      if (cuadrado = 64) then
          writeln('8*8=64');
      ERROR: cuadrado es función, falta invocarla
    }

    { d) INVALIDA ❌
      cuadrado(8);
      ERROR: se llama la función pero no se usa el resultado
    }

    { e) VALIDA ✔ }
    c := cuadrado(8);
    writeln(c);

    { f) INVALIDA ❌
      cuadrado(8, c);
      ERROR: la función solo recibe 1 parámetro
    }

    { g) VALIDA ✔ }
    if (cuadrado(8) = 64) then
        writeln('8*8=64');
end.