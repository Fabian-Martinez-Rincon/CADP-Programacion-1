program sumaTotal;
var
    tiziano:integer;
    numero:integer;
    suma:integer;
begin
    suma:=0;
    for tiziano:=1 to 15 do
    begin
        writeln('Ingrese un numero: ');
        ReadLn(numero);  
        suma:=suma+numero;
    end;
    writeln('La suma total es: ', suma);
end.