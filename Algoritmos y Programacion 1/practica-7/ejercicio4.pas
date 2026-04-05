program Casamientos2025;

type
    fecha = record
        dia: integer;
        mes: integer;
        anio: integer;
    end;

procedure leerFecha(var f: fecha);
begin
    writeln('Ingrese el dia:');
    readln(f.dia);
    writeln('Ingrese el mes:');
    readln(f.mes);
    writeln('Ingrese el anio:');
    readln(f.anio);
end;

function esVerano(f: fecha): boolean;
begin
    esVerano := (f.mes = 12) or (f.mes = 1) or (f.mes = 2);
end;

function esPrimeros15DeAbril(f: fecha): boolean;
begin
    esPrimeros15DeAbril := (f.mes = 4) and (f.dia <= 15);
end;

var
    f: fecha;
    cantVerano, cantAbril15: integer;

begin
    cantVerano := 0;
    cantAbril15 := 0;

    leerFecha(f);
    while (f.anio <> 2026) do
    begin
        if (esVerano(f)) then
            cantVerano := cantVerano + 1;

        if (esPrimeros15DeAbril(f)) then
            cantAbril15 := cantAbril15 + 1;

        leerFecha(f);
    end;

    writeln('Cantidad de casamientos en verano: ', cantVerano);
    writeln('Cantidad de casamientos en los primeros 15 dias de abril: ', cantAbril15);
end.