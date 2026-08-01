program ejercicio2;
uses fabosistemas;
const
    MAX = 5;

var
    numero:integer;
    i:integer;
    minimo1:integer;
    minimo2:integer;
begin
    Header;
    minimo1 := 9999;
    minimo2 := 9999;
    for i := 1 to MAX do
    begin
        writeln('Ingrese un nro: ');
        readln(numero);
        if numero < minimo1 then
        begin
            minimo2 := minimo1;
            minimo1 := numero;
        end
        else if numero < minimo2 then
            minimo2 := numero;
    end;
    Resultado('El numero minimo 1 es', minimo1);
    Resultado('El numero minimo 2 es', minimo2);
    Footer;
end.