program ejercicioSuma;

procedure calcularSuma(a, b: integer; var resultado: integer);
begin
    resultado := a + b;
end;

var
    numero1, numero2, suma: integer;
begin
    numero1 := 5;
    numero2 := 10;
    calcularSuma(numero1, numero2, suma);
    WriteLn('La suma es: ', suma);

    numero1 := 50;
    numero2 := 100;
    calcularSuma(numero1, numero2, suma);
    WriteLn('La suma es: ', suma);
end.