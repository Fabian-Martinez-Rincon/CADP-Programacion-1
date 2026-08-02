{Realizar un programa que lea números que representan códigos de productos correspondientes a juegos para
consolas. La secuencia finaliza al ingresar el código 0. Para cada código de producto se lee además la
cantidad total vendida y el precio por unidad. Informar el código de producto que se vendió más veces y el
código de producto que menos recaudó. Modularizar la solución.}

program Productos;

{-------------------------------------}
procedure maxVentas(cod: integer; cant: integer; var maxCant: integer; var codMax: integer);
begin
    if (cant > maxCant) then
    begin
        maxCant := cant;
        codMax := cod;
    end;
end;

{-------------------------------------}
procedure minRecaudacion(cod: integer; rec: real; var minRec: real; var codMin: integer);
begin
    if (rec < minRec) then
    begin
        minRec := rec;
        codMin := cod;
    end;
end;

{-------------------------------------}
var
    codigo, cantidad: integer;
    precio, recaudacion: real;

    maxCant, codMax: integer;
    minRec: real;
    codMin: integer;

begin
    maxCant := -1;
    minRec := 999999;

    writeln('Ingrese codigo (0 para terminar): ');
    readln(codigo);

    while (codigo <> 0) do
    begin
        writeln('Ingrese cantidad vendida: ');
        readln(cantidad);

        writeln('Ingrese precio: ');
        readln(precio);

        recaudacion := cantidad * precio;

        maxVentas(codigo, cantidad, maxCant, codMax);
        minRecaudacion(codigo, recaudacion, minRec, codMin);

        writeln('Ingrese codigo (0 para terminar): ');
        readln(codigo);
    end;

    writeln('Codigo mas vendido: ', codMax);
    writeln('Codigo que menos recaudo: ', codMin);
end.