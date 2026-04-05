program ejercicio6;
const
    CODIGO_TERMINAL = 32767;

var
    codigo: integer;
    precioActual:real;
    precioNuevo:real;
    encontroCodigo: boolean;
    porcentajeprecioActual: real;
    porcentajePrecioNuevo: real;
begin
    encontroCodigo := false;
    while not (encontroCodigo) do
    begin
        writeln('Ingrese el codigo del producto:');
        ReadLn(codigo);
        writeln('Ingrese el precio actual del producto:');
        ReadLn(precioActual);
        writeln('Ingrese el precio nuevo del producto:');
        ReadLn(precioNuevo);
         
        porcentajeprecioActual := precioActual / 10;
        WriteLn('El porcentaje del precio actual es: ', porcentajeprecioActual:0:2);
        if precioActual + porcentajeprecioActual < precioNuevo then
        begin
            writeln('El precio nuevo es mayor que el precio actual más el porcentaje.');
        end;
        if codigo = CODIGO_TERMINAL then
        begin
            encontroCodigo := true;
            writeln('Se ha ingresado el codigo terminal. Fin del programa.');
        end
    end;
end.