{El registro civil de La Plata ha solicitado un programa para analizar la distribución de casamientos
durante el año 2025.
a. Analizar y definir un tipo de dato adecuado para almacenar la información de la fecha de cada
casamiento.
b. Implementar un módulo que lea una fecha desde teclado y la retorne en un parámetro cuyo tipo es el
definido en el inciso a).
c. Implementar un programa que lea la fecha de todos los casamientos realizados en 2025. La lectura
finaliza al ingresar el año 2026. Debe informar la cantidad de casamientos realizados durante los meses de
verano (diciembre, enero y febrero) y la cantidad de casamientos realizados en los primeros 15 días del mes
de abril. Nota: utilizar el módulo realizado en b) para la lectura de fecha. No se leen casamientos
anteriores a 2025.}

program Casamientos2025;

type
    fecha = record
        dia: integer;
        mes: integer;
        anio: integer;
    end;

procedure leerFecha(var f: fecha);
begin
    writeln('Ingrese el anio (2025 para casamientos, 2026 para finalizar): ');
    readln(f.anio);

    while (f.anio < 2025) do
    begin
        writeln('Error. Ingrese un anio valido (>= 2025): ');
        readln(f.anio);
    end;

    if (f.anio <> 2026) then
    begin
        writeln('Ingrese el mes: ');
        readln(f.mes);
        writeln('Ingrese el dia: ');
        readln(f.dia);
    end;
end;

function esVerano(f: fecha): boolean;
begin
    esVerano := (f.mes = 12) or (f.mes = 1) or (f.mes = 2);
end;

procedure esVerano2(f: fecha; var esV: boolean);
begin
    if (f.mes = 12) or (f.mes = 1) or (f.mes = 2) then
        esV := true
    else
        esV := false;
end;

function esPrimeros15DeAbril(f: fecha): boolean;
begin
    esPrimeros15DeAbril := (f.mes = 4) and (f.dia <= 15);
end;

var
    f: fecha;
    cantVerano, cantAbril15: integer;
    esV: boolean;
begin
    cantVerano := 0;
    cantAbril15 := 0;

    leerFecha(f);
    while (f.anio <> 2026) do
    begin
        esVerano2(f, esV);
        if (esV) then
            cantVerano := cantVerano + 1;

        if (esPrimeros15DeAbril(f)) then
            cantAbril15 := cantAbril15 + 1;

        leerFecha(f);
    end;

    writeln('Cantidad de casamientos en verano: ', cantVerano);
    writeln('Cantidad de casamientos en los primeros 15 dias de abril: ', cantAbril15);
end.