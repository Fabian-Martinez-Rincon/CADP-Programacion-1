program practica1Parte2Ejercicio8;
var
    dia: integer;
    monto: real;
    cantVentasDia: integer;
    totalMes: real;
    maxVentas, diaMax: integer;
begin
    totalMes := 0; 
    maxVentas := -1;

    for dia := 1 to 31 do
    begin
        writeln('--- Dia ', dia, ' ---');
        cantVentasDia := 0;
        readln(monto);

        while (monto <> 0) do begin
            cantVentasDia := cantVentasDia + 1;
            totalMes := totalMes + monto;
            readln(monto);
        end;

        writeln('Cant Ventas del dia: ', cantVentasDia);

        if (cantVentasDia > maxVentas) then begin
            maxVentas := cantVentasDia;
            diaMax := dia;
        end;
    end;

    writeln('Total acumulado del mes: ', totalMes);
    writeln('Dia con mayor cantidad de ventas: ', diaMax);
end.