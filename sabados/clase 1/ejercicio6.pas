program Ejercicio6;

var
  codigo: integer;
  precioActual, precioNuevo: real;

begin
  writeln('Ingrese el codigo del producto:');
  readln(codigo);

  while codigo <> 32767 do
  begin
    writeln('Ingrese el precio actual:');
    readln(precioActual);

    writeln('Ingrese el precio nuevo:');
    readln(precioNuevo);

    if precioNuevo > precioActual * 1.10 then
      writeln('El aumento de precio del producto ', codigo, ' es superior al 10%')
    else
      writeln('El aumento de precio del producto ', codigo, ' no supera el 10%');

    writeln('Ingrese el codigo del producto:');
    readln(codigo);
  end;

  { Procesar el ultimo (32767) }
  writeln('Ingrese el precio actual:');
  readln(precioActual);

  writeln('Ingrese el precio nuevo:');
  readln(precioNuevo);

  if precioNuevo > precioActual * 1.10 then
    writeln('El aumento de precio del producto ', codigo, ' es superior al 10%')
  else
    writeln('El aumento de precio del producto ', codigo, ' no supera el 10%');

end.