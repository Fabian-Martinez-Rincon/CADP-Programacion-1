program Ejercicio6Radar;

type
    str20 = string[20];

    radar = record
        codigo: integer;
        velocidadMax: real;
        cantVehiculos: integer;
    end;

    vehiculo = record
        patente: str20;
        velocidad: real;
    end;

{-----------------------------------}
{ Módulo para leer radar }
procedure leerRadar(var r: radar);
begin
    write('Codigo de radar: ');
    readln(r.codigo);

    if (r.codigo <> -1) then
    begin
        write('Velocidad maxima permitida: ');
        readln(r.velocidadMax);
        write('Cantidad de vehiculos registrados: ');
        readln(r.cantVehiculos);
    end;
end;

{-----------------------------------}
{ Módulo para leer vehiculo }
procedure leerVehiculo(var v: vehiculo);
begin
    write('Patente: ');
    readln(v.patente);
    write('Velocidad: ');
    readln(v.velocidad);
end;

{-----------------------------------}
{ Actualiza maximo global }
procedure actualizarMaximo(v: vehiculo; var maxVel: real; var patMax: str20);
begin
    if (v.velocidad > maxVel) then
    begin
        maxVel := v.velocidad;
        patMax := v.patente;
    end;
end;

{-----------------------------------}
{ Actualiza minimo global }
procedure actualizarMinimo(v: vehiculo; var minVel: real; var patMin: str20);
begin
    if (v.velocidad < minVel) then
    begin
        minVel := v.velocidad;
        patMin := v.patente;
    end;
end;

{-----------------------------------}
{ Procesa un radar }
procedure procesarRadar(r: radar; var maxVel: real; var minVel: real; var patMax: str20; var patMin: str20);
var
    i: integer;
    v: vehiculo;
    sumaVelocidades, promedio: real;
    multados: integer;
begin
    sumaVelocidades := 0;
    multados := 0;

    for i := 1 to r.cantVehiculos do
    begin
        leerVehiculo(v);

        sumaVelocidades := sumaVelocidades + v.velocidad;

        if (v.velocidad > r.velocidadMax) then
            multados := multados + 1;

        actualizarMaximo(v, maxVel, patMax);
        actualizarMinimo(v, minVel, patMin);
    end;

    if (r.cantVehiculos > 0) then
        promedio := sumaVelocidades / r.cantVehiculos
    else
        promedio := 0;

    writeln('Radar ', r.codigo, ':');
    writeln('  a) Velocidad promedio: ', promedio:0:2);
    writeln('  b) Cantidad de vehiculos multados: ', multados);
    writeln;
end;

{-----------------------------------}
var
    r: radar;
    maxVel, minVel: real;
    patMax, patMin: str20;
    hayVehiculos: boolean;
begin
    maxVel := -1;
    minVel := 9999;
    patMax := '';
    patMin := '';
    hayVehiculos := false;

    leerRadar(r);
    while (r.codigo <> -1) do
    begin
        if (r.cantVehiculos > 0) then
            hayVehiculos := true;

        procesarRadar(r, maxVel, minVel, patMax, patMin);
        leerRadar(r);
    end;

    if (hayVehiculos) then
    begin
        writeln('c) Patente del vehiculo con mayor velocidad: ', patMax);
        writeln('c) Patente del vehiculo con menor velocidad: ', patMin);
    end
    else
        writeln('No se registraron vehiculos.');
end.