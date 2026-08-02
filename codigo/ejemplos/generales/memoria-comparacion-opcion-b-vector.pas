{Ejercicio resuelto de comparación de memoria "Cuál de las dos opciones consume menos memoria total
(memoria estática + memoria dinámica)": Opción B (vector). Carga las primeras 6 posiciones de un
array[1..10] of integer. Memoria estática: 72 bytes (v: 10*6; i, dimL: 6+6). Memoria dinámica: no tiene (no
usa new). Memoria total calculada: 72 bytes.}

program opcion_B;
type
    vector = array [1..10] of integer;
var
    v:vector;
    i,dimL:integer;
begin
    dimL:=0;
    for i:=1 to 6 do begin
        dimL:=dimL + 1;
        v[i]:=i;
    end;
end.