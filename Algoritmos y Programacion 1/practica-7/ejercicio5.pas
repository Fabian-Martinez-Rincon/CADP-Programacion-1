program Bicicleterias;

const
    SUCURSALES = 6;
    MESES = 12;

type
    rangoSucursal = 1..SUCURSALES;
    rangoMes = 1..MESES;

    datosMes = record
        vendidas: integer;
        facturado: real;
        defectuosas: integer;
        devuelto: real;
    end;

var
    info: array[rangoSucursal, rangoMes] of datosMes;
    i, j: integer;

    // a)
    minDef, sucMin: integer;

    // b)
    maxVendidas, mesMax: integer;

    // c)
    gananciaTotalAbril: real;
    promedioAbril: real;

begin
    { Carga de datos }
    for i := 1 to SUCURSALES do
    begin
        writeln('Sucursal ', i);
        for j := 1 to MESES do
        begin
            writeln('Mes ', j);

            write('Vendidas: '); readln(info[i,j].vendidas);
            write('Facturado: '); readln(info[i,j].facturado);
            write('Defectuosas: '); readln(info[i,j].defectuosas);
            write('Devuelto: '); readln(info[i,j].devuelto);
        end;
    end;

    { a) Sucursal con menos defectuosas }
    minDef := 999999;

    for i := 1 to SUCURSALES do
    begin
        var totalDef: integer;
        totalDef := 0;

        for j := 1 to MESES do
            totalDef := totalDef + info[i,j].defectuosas;

        if totalDef < minDef then
        begin
            minDef := totalDef;
            sucMin := i;
        end;
    end;

    writeln('Sucursal con menos defectuosas: ', sucMin);

    { b) Mes con más ventas por sucursal }
    for i := 1 to SUCURSALES do
    begin
        maxVendidas := -1;

        for j := 1 to MESES do
        begin
            if info[i,j].vendidas > maxVendidas then
            begin
                maxVendidas := info[i,j].vendidas;
                mesMax := j;
            end;
        end;

        writeln('Sucursal ', i, ' - Mes con mas ventas: ', mesMax);
    end;

    { c) Promedio de ganancia en abril (mes 4) }
    gananciaTotalAbril := 0;

    for i := 1 to SUCURSALES do
    begin
        gananciaTotalAbril := gananciaTotalAbril +
            (info[i,4].facturado - info[i,4].devuelto);
    end;

    promedioAbril := gananciaTotalAbril / SUCURSALES;

    writeln('Ganancia promedio en abril: ', promedioAbril:0:2);

end.