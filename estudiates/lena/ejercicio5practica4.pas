program ejercicio5;

procedure LeerPersona( var dni: integer; var edad: integer; var estadoCivil: char);
begin
    WriteLn('Ingrese DNI:');
    ReadLn(dni);
    if dni <> -1 then
    begin
        WriteLn('Ingrese edad:');
        ReadLn(edad);
        WriteLn('Ingrese estado civil (s/c/d/v):');
        ReadLn(estadoCivil);
    end;
end;

procedure leerUltimosRecibos(var total: Integer);
var
    i, ingreso: Integer;
begin
    total := 0;
    for i := 1 to 12 do
    begin
        WriteLn('Ingrese el ingreso del recibo ', i, ':');
        ReadLn(ingreso);
        total := total + ingreso;
    end;
end;

var
    dni, edad: integer;
    estadoCivil: char;
    totalUltimos12Recibos: Integer;
    cantidadPersonas: Integer;
    totalPromedio: Integer;
begin
    cantidadPersonas := 0;
    totalPromedio := 0;
    LeerPersona(dni, edad, estadoCivil);
    while dni <> -1 do
    begin
        cantidadPersonas := cantidadPersonas + 1;
        leerUltimosRecibos(totalUltimos12Recibos);
        totalPromedio := totalPromedio + totalUltimos12Recibos;
        LeerPersona(dni, edad, estadoCivil);
        WriteLn('Total de los últimos 12 recibos: ', totalUltimos12Recibos);
    end;
    if cantidadPersonas > 0 then
    begin
        WriteLn('Promedio de los últimos 12 recibos: ', totalPromedio / cantidadPersonas);
    end;
end.