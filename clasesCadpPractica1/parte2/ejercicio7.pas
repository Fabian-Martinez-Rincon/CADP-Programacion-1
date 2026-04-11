program practica1Parte2Ejercicio7;
var
    nombre: string;
    tiempo: real; 
    i: integer;
    min1, min2: real; 
    nomMin1, nomMin2: string;
    max1, max2: real; 
    nomMax1, nomMax2: string;
begin
    min1 := 9999;
    min2 := 9999;
    max1 := -1;
    max2 := -1;
    
    for i := 1 to 100 do
    begin
        writeln('nombre del piloto: '); readln(nombre);
        writeln('Ingrese tiempo: '); readln(tiempo);
        
        if (tiempo < min1) then 
        begin
            min2 := min1;   nomMin2 := nomMin1;
            min1 := tiempo; nomMin1 := nombre;
        end
        else if (tiempo < min2) then 
        begin
            min2 := tiempo; nomMin2 := nombre;
        end;

        if (tiempo > max1) then begin
            max2 := max1;   
            nomMax2 := nomMax1;

            max1 := tiempo; 
            nomMax1 := nombre;
        end

        else if (tiempo > max2) then 
        begin
            max2 := tiempo; nomMax2 := nombre;
        end;
    end;
    
    writeln('🥇 Primer puesto: ', nomMin1);
    writeln('🥈 Segundo puesto: ', nomMin2);
    writeln('🐢 Ultimo puesto: ', nomMax1);
    writeln('🐢 Anteultimo puesto: ', nomMax2);
end.