program ejercicio2;
uses fabosistemas;

const
    MAX = 5;

var
    numero: integer;
    i:integer;
    mayor:integer;
begin
    mayor:= -9999;
    Header;
    for i := 1 to MAX do
    begin
        writeln('Ingrese un nro: ');
        readln(numero);
        if numero > mayor then
            mayor := numero;
    end;
    Resultado('El numero mayor es', mayor);
    Footer;
end.