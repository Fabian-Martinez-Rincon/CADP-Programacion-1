program practica1Parte2Ejercicio6;
var
    codigo: integer;
    precio: real;
    i: integer;
    min1, min2: real;
    codMin1, codMin2: integer;
    cant: integer;
begin
    min1 := 9999;
    min2 := 9999;
    cant := 0;

    for i := 1 to 200 do
    begin
        writeln('Ingrese codigo: ');
        readln(codigo);

        writeln('Ingrese precio: ');
        readln(precio);

        if (precio < min1) then begin
            min2 := min1;
            codMin2 := codMin1;
        
            min1 := precio;
            codMin1 := codigo;
        end
        else if (precio < min2) then 
        begin
            min2 := precio;
            codMin2 := codigo;
        end;
        if (precio > 16) and (codigo mod 2 = 0) then
            cant := cant + 1;
    end;

    writeln('Codigo producto mas barato: ', codMin1);
    writeln('Codigo segundo mas barato: ', codMin2);
    writeln('Cantidad de productos >16 y codigo par: ', cant);
end.