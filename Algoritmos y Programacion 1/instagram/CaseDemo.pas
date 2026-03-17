program CaseDemo;
var
    opcion: Integer;
begin
    writeln('Ingrese un numero del 1 al 6:');
    readln(opcion);

    case opcion of
        1,2,3: writeln('Numero pequeño');
        4,5: writeln('Numero mediano');
        6: writeln('Numero grande');
    else
        writeln('Numero fuera de rango');
    end;
end.