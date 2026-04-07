program Bicicleterias;

const
    SUCURSALES = 6;
    MESES = 12;

procedure leerDatosMes(var vendidas, defectuosas: integer; var facturado, devuelto: real);
begin
    write('Vendidas: ');
    readln(vendidas);
    write('Facturado: ');
    readln(facturado);
    write('Defectuosas: ');
    readln(defectuosas);
    write('Devuelto: ');
    readln(devuelto);
end;

procedure procesarSucursal(numSucursal: integer; var totalDef, mesMax: integer; var gananciaAbril: real);
var
    j: integer;
    vendidas, defectuosas: integer;
    maxVendidas: integer;
    facturado, devuelto: real;
begin
    totalDef := 0;
    maxVendidas := -1;
    mesMax := 1;

    writeln('Sucursal ', numSucursal);

    for j := 1 to MESES do
    begin
        writeln('Mes ', j);
        leerDatosMes(vendidas, defectuosas, facturado, devuelto);

        totalDef := totalDef + defectuosas;

        if vendidas > maxVendidas then
        begin
            maxVendidas := vendidas;
            mesMax := j;
        end;

        if j = 4 then
            gananciaAbril := gananciaAbril + (facturado - devuelto);
    end;
end;

procedure actualizarMinimo(totalDef, numSucursal: integer; var minDef, sucMin: integer);
begin
    if totalDef < minDef then
    begin
        minDef := totalDef;
        sucMin := numSucursal;
    end;
end;

var
    i: integer;
    totalDef, minDef, sucMin: integer;
    mesMax: integer;
    gananciaTotalAbril, promedioAbril: real;

begin
    minDef := 999999;
    gananciaTotalAbril := 0;

    for i := 1 to SUCURSALES do
    begin
        procesarSucursal(i, totalDef, mesMax, gananciaTotalAbril);
        actualizarMinimo(totalDef, i, minDef, sucMin);

        writeln('Sucursal ', i, ' - Mes con mas ventas: ', mesMax);
    end;

    promedioAbril := gananciaTotalAbril / SUCURSALES;

    writeln('Sucursal con menos defectuosas: ', sucMin);
    writeln('Ganancia promedio en abril: ', promedioAbril:0:2);
end.