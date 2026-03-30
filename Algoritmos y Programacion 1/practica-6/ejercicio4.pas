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