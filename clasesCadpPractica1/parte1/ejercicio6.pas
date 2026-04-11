program ejercicio6;

var
    codigo: integer;
    precioActual, precioNuevo: real;

begin
    repeat
        writeln('Ingrese codigo: ');
        readln(codigo);

        writeln('Ingrese precio actual: ');
        readln(precioActual);

        writeln('Ingrese nuevo precio: ');
        readln(precioNuevo);

        if precioNuevo > (precioActual * 1.10) then
            writeln('El aumento de precio del producto ', codigo, ' es superior al 10%')
        else
            writeln('El aumento de precio del producto ', codigo, ' no supera el 10%');

    until codigo = 32767;
end.