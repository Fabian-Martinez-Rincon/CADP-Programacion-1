program Ejercicio8;

var
  op: char;
  num, resultado: integer;

begin
  writeln('Ingrese + o -:');
  readln(op);

  if (op <> '+') and (op <> '-') then
  begin
    writeln('Error: caracter invalido');
  end
  else
  begin
    writeln('Ingrese un numero (0 para terminar):');
    readln(num);

    if num <> 0 then
    begin
      resultado := num;

      readln(num);
      while num <> 0 do
      begin
        if op = '+' then
          resultado := resultado + num
        else
          resultado := resultado - num;

        readln(num);
      end;

      writeln('Resultado final: ', resultado);
    end
    else
      writeln('No se ingresaron numeros');
  end;

end.