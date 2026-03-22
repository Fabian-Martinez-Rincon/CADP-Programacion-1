{ a. Realice un módulo que lea de teclado números enteros hasta que llegue un valor negativo y retorne la 
cantidad de números impares.}

program ejercicio2;

function contarImpares_1: integer;
var
  num, contador: integer;
begin
  contador := 0;

  writeln('Ingrese numeros (negativo para terminar): ');
  readln(num);

  while num >= 0 do
  begin
    if (num mod 2 <> 0) then
      contador := contador + 1;

    readln(num);
  end;

  contarImpares_1 := contador;
end;

procedure contarImpares_2(var cantidad: integer);
var
  num: integer;
begin
  cantidad := 0;

  writeln('Ingrese numeros (negativo para terminar): ');
  readln(num);

  while num >= 0 do
  begin
    if (num mod 2 <> 0) then
      cantidad := cantidad + 1;

    readln(num);
  end;
end;

var
  resultado: integer;

begin
    resultado := contarImpares_1;
    writeln('Cantidad de numeros impares: ', resultado);
    contarImpares_2(resultado);
    writeln('Cantidad de numeros impares: ', resultado);

end.