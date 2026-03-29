program VentasMes;

{--------------------------------------}
procedure procesarDia(var cantVentas: integer; var totalDia: real);
var
    monto: real;
begin
    cantVentas := 0;
    totalDia := 0;

    writeln('Ingrese montos del dia (0 para terminar): ');
    readln(monto);

    while (monto <> 0) do
    begin
        cantVentas := cantVentas + 1;
        totalDia := totalDia + monto;
        readln(monto);
    end;
end;

{--------------------------------------}
procedure maximo(cant, dia: integer; var maxCant, diaMax: integer);
begin
    if (cant > maxCant) then
    begin
        maxCant := cant;
        diaMax := dia;
    end;
end;

{--------------------------------------}
var
    dia, cantVentas, diaMax, maxCant: integer;
    totalDia, totalMes: real;

begin
    totalMes := 0;
    maxCant := -1;

    for dia := 1 to 31 do
    begin
        writeln('--- Dia ', dia, ' ---');
        procesarDia(cantVentas, totalDia);
        writeln('Cantidad de ventas del dia: ', cantVentas);
        totalMes := totalMes + totalDia;
        maximo(cantVentas, dia, maxCant, diaMax);
    end;

    writeln('Total recaudado en el mes: ', totalMes:0:2);
    writeln('Dia con mayor cantidad de ventas: ', diaMax);
end.