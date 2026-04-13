program ejercicio1;
uses fabosistemas;
const
    MAX = 5;

var
    numerosMayores: integer;
    numero:integer;
    tobi:integer;
    suma:integer;
begin
    Header;
    numerosMayores := 0;
    suma := 0;
    for tobi := 1 to MAX do
    begin
        writeln('Ingrese un nro: ');
        readln(numero);
        if numero > 5 then
            numerosMayores := numerosMayores + 1;
        suma := suma + numero;
    end;

    Resultado('La suma es', suma);
    Resultado('Numeros mayores a 5:', numerosMayores);
    Footer;
end.