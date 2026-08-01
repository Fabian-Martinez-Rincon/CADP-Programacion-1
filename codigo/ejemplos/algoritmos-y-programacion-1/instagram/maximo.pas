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