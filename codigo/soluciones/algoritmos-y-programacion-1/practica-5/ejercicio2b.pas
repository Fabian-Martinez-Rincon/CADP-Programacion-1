{a. Realizar un módulo que lea 1000 números enteros desde teclado. Retornar los dos números mínimos leídos.
b. Modifique el ejercicio anterior para que, en vez de leer 1000 números, la lectura finalice al leer el
número 0.}

program DosMinimosCorte;

procedure minimos(num: integer; var min1, min2: integer);
begin
    if (num < min1) then
    begin
        min2 := min1;
        writeln('Nuevo minimo encontrado: ', num, ' (anterior: ', min1, ')');
        min1 := num;
        writeln(' -> min1: ', min1, ', min2: ', min2);
    end
    else if (num < min2) then
    begin
        writeln('Nuevo segundo minimo encontrado: ', num, ' (anterior: ', min2, ')');
        min2 := num;
    end;
end;

var
    num: integer;
    min1, min2: integer;
begin
    min1 := 9999;  { valor alto }
    min2 := 9999;

    writeln('Ingrese numeros (0 para terminar): ');
    readln(num);

    while (num <> 0) do
    begin
        minimos(num, min1, min2);
        readln(num);
    end;

    writeln('El menor numero es: ', min1);
    writeln('El segundo menor numero es: ', min2);
end.