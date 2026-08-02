{Ejemplo suelto de Instagram (FaboSistemas): variante minimalista del patrón de máximo enseñado en la
Práctica 5 — procedure maximo(n: real; var max: real) actualiza max mientras se leen números hasta el 0.}

program MayorTemperatura;

procedure maximo(n: real; var max: real);
begin
    if (n > max) then
        max := n;
end;

var
    numero, max: real;
begin
    readln(numero);

    while (numero <> 0) do
    begin
        maximo(numero, max);
        readln(numero);
    end;

    writeln('El valor maximo es: ', max:0:1);
end.